class Utils {
  static String linkURL = 'https://cryptowat.ch/';
  static String div1 = '_2eV8NnSAuzZ4ULshmhbQV0 _35nNYs8vrYTnzaGWL4kEBP w-full';
  static String div2 = '_3vZLCT63Rwrx13Ah48cpEq rB4HDVG3u8NI_XYT1BAGw';

  /*
         <div class="_2eV8NnSAuzZ4ULshmhbQV0 _35nNYs8vrYTnzaGWL4kEBP w-full">
                        <div class="_3vZLCT63Rwrx13Ah48cpEq rB4HDVG3u8NI_XYT1BAGw">
                           <div class="_34oYn2FYsVnKyl3zi8mK5D u62FmIk0zyzwC4aTcyLvS _2eU06SRnF8jtz1L2K41BsV _2KCrarppSBehwCF90p6GY5 align-middle py-0 text-center"></div>
                           <div title=Symbol class="_3gfz4bwFuvIAewxe3Uldrm _2Tu189I06n925-IEVyAxT5 u62FmIk0zyzwC4aTcyLvS _1TuQ_Cac70IaRi6hBmwL9 _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-left"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=symbol data-current-sort-key=volume data-current-sort-order=desc>Symbol</span></div>
                           <div title=Name class="_2mMXk-p9QhUKdzjad5cOG2 u62FmIk0zyzwC4aTcyLvS _2eU06SRnF8jtz1L2K41BsV _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-left"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=name data-current-sort-key=volume data-current-sort-order=desc>Name</span></div>
                           <div title=Price class="_2bdPcu43qBsjmZD2rVDIkQ u62FmIk0zyzwC4aTcyLvS _1TuQ_Cac70IaRi6hBmwL9 _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=price data-current-sort-key=volume data-current-sort-order=desc>Price</span></div>
                           <div title="24H Vol" class="undefined u62FmIk0zyzwC4aTcyLvS _1TuQ_Cac70IaRi6hBmwL9 _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right sort desc"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=volume data-current-sort-key=volume data-current-sort-order=desc>24H Vol<span class="arrow-down _1OkSwm-YwwDL4A_f4lVR8U _2I-dES2y5NkVqxy2kFEtXs"></span></span></div>
                           <div title="Market Cap" class="undefined u62FmIk0zyzwC4aTcyLvS _1TuQ_Cac70IaRi6hBmwL9 _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=marketcap data-current-sort-key=volume data-current-sort-order=desc>Market Cap</span></div>
                           <div title="Change 24H" class="undefined _1IulpzjEz-0d7XcGwUQFpN u62FmIk0zyzwC4aTcyLvS _1TuQ_Cac70IaRi6hBmwL9 _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=performance-24h data-current-sort-key=volume data-current-sort-order=desc>Change 24H</span></div>
                           <div title="Change 7D" class="undefined u62FmIk0zyzwC4aTcyLvS _3yV2oN7POTiceqExg5hftn _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=performance-1w data-current-sort-key=volume data-current-sort-order=desc>Change 7D</span></div>
                           <div title="Change 1M" class="undefined u62FmIk0zyzwC4aTcyLvS _3yV2oN7POTiceqExg5hftn _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=performance-1m data-current-sort-key=volume data-current-sort-order=desc>Change 1M</span></div>
                           <div title="Change 6M" class="undefined u62FmIk0zyzwC4aTcyLvS _3yV2oN7POTiceqExg5hftn _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=performance-6m data-current-sort-key=volume data-current-sort-order=desc>Change 6M</span></div>
                           <div title="Change 1Y" class="undefined u62FmIk0zyzwC4aTcyLvS _3yV2oN7POTiceqExg5hftn _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=performance-1y data-current-sort-key=volume data-current-sort-order=desc>Change 1Y</span></div>
                           <div title="Sum of all bid orders within 100 basis points of the best bid across all markets tracked by Cryptowatch" class="undefined u62FmIk0zyzwC4aTcyLvS _1PQbTw2IfKccSpm5xXGbxZ _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=liquidity-bid data-current-sort-key=volume data-current-sort-order=desc>Liq Bid</span></div>
                           <div title="Sum of all ask orders within 100 basis points of the best ask across all markets tracked by Cryptowatch" class="undefined u62FmIk0zyzwC4aTcyLvS _1PQbTw2IfKccSpm5xXGbxZ _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=liquidity-ask data-current-sort-key=volume data-current-sort-order=desc>Liq Ask</span></div>
                           <div title="Liq Bid / Liq Ask" class="undefined u62FmIk0zyzwC4aTcyLvS _1PQbTw2IfKccSpm5xXGbxZ _2KCrarppSBehwCF90p6GY5 align-middle py-0 _2NGpbL48X-kyzo5ScEr72D text-right"><span class=_3-SqNJ_XqMb2tSlwY7LvAI data-sort-key=liquidityRatio data-current-sort-key=volume data-current-sort-order=desc>Liq Ratio</span></div>
                        </div>
                        <a class="_1roDdymkPS2zplXEDcBm0L _3z3AqahoD2pN2R7vFue-0o pointer" title=Bitcoin href=/assets/btc data-testid=list-row>
                           <div class="text-center _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _2eU06SRnF8jtz1L2K41BsV">1</div>
                           <div class="text-left _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1TuQ_Cac70IaRi6hBmwL9"><i class="crypton sym-default-s sym-btc-s _3fjTNyT8S3oN5Xib_Ru5mn"></i>BTC</div>
                           <div class="text-left _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _2eU06SRnF8jtz1L2K41BsV"><i class="crypton sym-default-s sym-btc-s"></i>Bitcoin</div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1TuQ_Cac70IaRi6hBmwL9"><span class=price>7658.63</span></div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1TuQ_Cac70IaRi6hBmwL9">2.904B</div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1TuQ_Cac70IaRi6hBmwL9">139.9B</div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1TuQ_Cac70IaRi6hBmwL9"><span class=color-short>-3.39%</span></div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _3yV2oN7POTiceqExg5hftn"><span class=color-short>-14.52%</span></div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _3yV2oN7POTiceqExg5hftn"><span class=color-short>-21.75%</span></div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _3yV2oN7POTiceqExg5hftn"><span class=color-short>-26.08%</span></div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _3yV2oN7POTiceqExg5hftn"><span class=color-long>+92.05%</span></div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1PQbTw2IfKccSpm5xXGbxZ">50.47M</div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1PQbTw2IfKccSpm5xXGbxZ">51.84M</div>
                           <div class="text-right _2yv_NtK1R_FBVWqrvRdgcN _2jRRJJvarKXJGP9oRP-Bv0 _1PQbTw2IfKccSpm5xXGbxZ">0.9736</div>
                        </a>
                        
      </div>
  */
}
