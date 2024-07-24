## PageTabStyle's TabView crash

A crash may occur on iOS 16.0 with TabView using PageTabViewStyle.

|iOS 16.0|iOS 16.4|
|:--:|:--:|
|![ios16_crash](https://github.com/user-attachments/assets/10800b91-6f41-4f6b-9e9e-8f7bb26ffa2c)|![ios16_ok](https://github.com/user-attachments/assets/ae9cbf21-ab87-4644-88c0-bf2a30624e23)|

## To avoid a crash

Use EmptyView when data array is empty.  
After fetching or getting data, use TabView instead.

![ios16_fixed](https://github.com/user-attachments/assets/501dd2e4-6689-4a48-b529-9ec2e2058c33)
