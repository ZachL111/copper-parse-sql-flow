# Field Notes

I would read this project from the data inward: cases first, implementation second.

The domain cases cover `token drift`, `grammar width`, `label quality`, and `error locality`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`stale` is the strongest case at 184 on `token drift`. `baseline` is the cautious anchor at 127 on `token drift`.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
