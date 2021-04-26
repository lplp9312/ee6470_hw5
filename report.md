# HW5 Report 蕭詠倫 109061634

## HLS - Gaussian Blur Filter - splitted 

### 結果

#### 原始圖檔 
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/Gaussian_Blur_splitted/lena_std_short.bmp)

#### 模糊處理 
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/Gaussian_Blur_splitted/stratus/out.bmp)

#### 模擬時間

##### BASIC
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/spiltted_BASIC_run_time.jpg)
##### DPA
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/spiltted_DPA_run_time.jpg)


### RTL Summary page
##### BASIC
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/spiltted_BASIC.jpg)
##### DPA
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/spiltted_DPA.jpg)

### systemC for HLS 程式碼重點介紹

#### 用來進行 Gaussian Blur 的3X3矩陣 (GauFilter.cpp)

        const sc_dt::sc_uint<8> mask[MASK_X][MASK_Y] = {1, 2, 1, 2, 4, 2, 1, 2, 1};
        const sc_dt::sc_uint<8> factor = 16;

#### Testbench,GauFilter 的建立和 (System.h)

            Testbench tb;
        #ifndef NATIVE_SYSTEMC
            GauFilter_wrapper gau_blur_filter;
        #else
            GauFilter gau_blur_filter;
        #endif

#### r, g, b, result 共 4 個 p2p channel 的建立 (System.h)

        #ifndef NATIVE_SYSTEMC
            //cynw_p2p< sc_dt::sc_uint<24> > rgb;
            cynw_p2p< sc_dt::sc_uint<8> > r;
            cynw_p2p< sc_dt::sc_uint<8> > g;
            cynw_p2p< sc_dt::sc_uint<8> > b;
            cynw_p2p< sc_dt::sc_uint<24> > result;
        #else
            //sc_fifo< sc_dt::sc_uint<24> > rgb;
            sc_fifo< sc_dt::sc_uint<8> > r;
            sc_fifo< sc_dt::sc_uint<8> > g;
            sc_fifo< sc_dt::sc_uint<8> > b;
            sc_fifo< sc_dt::sc_uint<24> > result;
        #endif

#### clk, rst 和 4 個 p2p channel 的連接 (System.cpp)

        tb.i_clk(clk);
        tb.o_rst(rst);
        gau_blur_filter.i_clk(clk);
        gau_blur_filter.i_rst(rst);
        //tb.o_rgb(rgb);
        tb.o_r(r);
        tb.o_g(g);
        tb.o_b(b);
        tb.i_result(result);
        //gau_blur_filter.i_rgb(rgb);
        gau_blur_filter.i_r(r);
        gau_blur_filter.i_g(g);
        gau_blur_filter.i_b(b);
        gau_blur_filter.o_result(result);

## HLS - Gaussian Blur Filter - non splitted 

### 結果

#### 原始圖檔 
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/Gaussian_Blur_non_splitted/lena_std_short.bmp)

#### 模糊處理 
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/Gaussian_Blur_non_splitted/stratus/out.bmp)

#### 模擬時間

##### BASIC
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/non_spiltted_BASIC_run_time.jpg)
##### DPA
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/non_spiltted_DPA_run_time.jpg)


### RTL Summary page
##### BASIC
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/non_spiltted_BASIC.jpg)
##### DPA
![image](https://github.com/lplp9312/ee6470_hw5/blob/main/RTL_Summary_page/non_spiltted_DPA.jpg)


### systemC for HLS 程式碼重點介紹

#### 用來進行 Gaussian Blur 的3X3矩陣 (GauFilter.cpp)

        const sc_dt::sc_uint<8> mask[MASK_X][MASK_Y] = {1, 2, 1, 2, 4, 2, 1, 2, 1};
        const sc_dt::sc_uint<8> factor = 16;

#### Testbench,GauFilter 的建立和 (System.h)

            Testbench tb;
        #ifndef NATIVE_SYSTEMC
            GauFilter_wrapper gau_blur_filter;
        #else
            GauFilter gau_blur_filter;
        #endif

#### rgb, result 共 2 個 p2p channel 的建立 (System.h)

        #ifndef NATIVE_SYSTEMC
            cynw_p2p< sc_dt::sc_uint<24> > rgb;
            cynw_p2p< sc_dt::sc_uint<24> > result;
        #else
            sc_fifo< sc_dt::sc_uint<24> > rgb;
            sc_fifo< sc_dt::sc_uint<24> > result;
        #endif

#### clk, rst 和 2 個 p2p channel 的連接 (System.cpp)

        tb.i_clk(clk);
        tb.o_rst(rst);
        gau_blur_filter.i_clk(clk);
        gau_blur_filter.i_rst(rst);
        tb.o_rgb(rgb);
        tb.i_result(result);
        gau_blur_filter.i_rgb(rgb);
        gau_blur_filter.o_result(result);

## 模擬結果彙整

#### splitted mode
##### BASIC 
###### Area = 1688
###### Run time = 43909110 ns
##### DPA
###### Area = 1620
###### Run time = 43909110 ns  
<br/>
<br/>
<br/>
#### non splitted mode
##### BASIC 
###### Area = 1617
###### Run time = 32112630 ns
##### DPA
###### Area = 1549
###### Run time = 32112630 ns


## 討論

在本次作業中，有對 Gaussian Blur Filter 的 input 進行2種形式的模擬， splitted mode 為 RBG data 利用 3 個 8-bit 的 p2p channel 進行傳送，  
而 non splitted mode 為 RBG data 利用 1 個 24-bit 的 p2p channel 進行傳送。根據上方模擬結果可以知道， splitted mode 在 Area 和 Run time  
都比 non splitted mode 來的差，而 DPA 相對於 BASIC 對 Run time 的表現沒有影響，但是 Area 的表現有比較好。在跑 sim_V 的時候，發生了部分  
datatype 無法進行 HLS ，像是之前的 Filter 都是利用 double 建立的就無法進行 HLS ，因此本次作業使用 uint 建立。


