:: Created by Sara Rey 10/07/2019
:: Map drives from cluster, A: archive (raw data), W: results, Y: temp


NET USE A: \\10.59.210.245\archive /persistent:YES
NET USE W: \\10.59.210.245\results /persistent:YES
NET USE Y: \\10.59.210.245\temp /persistent:YES
