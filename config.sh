
IP=$(curl ip.gs)
echo "IP=$IP"

tee <<EOF >/dev/null ~/massa/massa-node/config/config.toml
# ~/massa/massa-node/config/config.toml
[network]
    routable_ip = "$IP"
    
[bootstrap]
    # list of bootstrap (ip, node id)
    bootstrap_list = [
        ["109.107.187.223:31245", "2kA4YcWV6fc3vB3y8FFo51SNhH5gymLyTmhTTQdE7qjKr6yB2s"],
        ["109.205.182.10:31245", "2q8cE2ZxcFAQ9Q4RGw6uh5xCbKEoiwmAnhtDJsp2pRuMo2NtXg"],
        ["109.205.182.11:31245", "2r1K9ehgbW8VNFnxYNJpV3csy3ajwY8vM7eXKeQhUSuG13oYFL"],
        ["109.205.182.12:31245", "NFMmXGvqfE8uLEANyNpxHLZ4sHQR4nAxehwEmK1f3FANtwtfU"],
        ["116.203.24.18:31245", "VjeQRQzMGA3rBvDHADnph1UY7NmGP2jo7uGQge5KceQk5jwpZ"],
        ["116.203.39.242:31245", "PwsF6JGsHXqLzXp2ZaB79swptAziXkF6oLW9F5Q217o1aGUab"],
        ["116.203.97.105:31245", "ioEj6BAhMQjVYgE8zorRABhQ3AENmrz7JGQxVzz85n1D7AC6D"],
        ["135.181.2.171:31245", "271C8zL5CzD3TTtryCeT2K67D2DQPmGnzxWeBYx3i985SGYpDS"],
        ["135.181.75.219:31245", "FK2zXrnyr1YKcFw4s3ZwQkGEthybQYFomKN6R3XVSJ7rue8Nf"],
        ["135.181.94.227:31245", "5QaGb69Q2DDwnDcb7cWRrsBzjgY6XsqyGTZUMrL7fuZe5u9Rq7"],
        ["139.59.85.232:31245", "2tLwy27prB5GKSEa6G9euvx3AL5ppKanu7zKte4rDMyYSk7evH"],
        ["141.95.108.187:31245", "EhSU3znNnAxbNZCdMUZ5KtgdfBPZyhP4TGr8sWreZhX67AGNs"],
        ["144.76.39.57:31245", "2bToBb7jQTJGGRfjwZi3U8HXhj6V3mDdSZBZtHcCNhZpBqrqnj"],
        ["144.91.78.160:31245", "21hzXBE8h7MM2aJJWbUJSDhAYrg2kdccDL7xTYGG452eT6Nnb8"],
        ["144.91.82.182:31245", "2CdqdDxqC1YZFwj24G2PNPEqZM5zEv2zkY96BGXoPLLQmseyPZ"],
        ["146.120.79.203:31245", "2McoV5ErCpiwZgF9S9Q3NYNyYNcmQwkq3mshLbk21CQWPV8Rvk"],
        ["149.202.86.103:31245", "2Fyi8WsZQR8QibNh5pBSdAJ8tLLo5ryVizjbipvyHAuAdRSHgm"],
        ["149.202.89.125:31245", "2Zr27YCr8MaHTC41ZLWVquyrM8cbMt8jJi6fttHQSnMxL3g1uD"],
        ["149.56.29.179:31245", "2fTjGViDNyLZC4Bx3drc1ZPqkFNz3M2AkcPNKYpTwkxGEzgnq7"],
        ["154.12.232.162:31245", "2SMxJA69yLjrHF7v3bm8GY7igyjbqUXrUo752Kz3oMqkQTp1Kd"],
        ["154.26.128.79:31245", "kAkmZYHCPnnAEaoyygR8vaCqML3ue7ZP3R14JuE8k5Z7FNijJ"],
        ["158.69.120.215:31245", "2Hujf2rHBquDrhixnw3dQTHaZMGp5xJq4q766dTRwy6v224CAi"],
        ["158.69.23.120:31245", "CzhbcUMKLmnkg9vzZUHVH6buzE22oToDxW7nndnYyETSh2fYn"],
        ["159.223.78.58:31245", "xPfgqpJYvEccVkmz2MCxBAsrB8GfsgC2QWynGVmXHjCCefnJz"],
        ["161.97.106.195:31245", "HTVbKBhBBtKB9Nm4CZfLNKdEDMq6apJYKp4XRJuXcEhEdoMAG"],
        ["161.97.107.4:31245", "pmbeGTnn8w1EGtCRKMnXfvvdEEheaWuNX4jDyUDNEsqRhtLF"],
        ["161.97.110.72:31245", "2UnakB8NBJV6bCYC3Hmns2GTZcKmfPPaxYJVXHWibVuU18i2iK"],
        ["161.97.125.170:31245", "2Dm6J5y5ms9bgRy64Qu2swACsyJfRRuKR24RdNr6boBtQ8F6Wc"],
        ["161.97.181.89:31245", "27HBPVcey58bcZWJ2MJTvma3B233eFXNuzUVjivrvZFoTJ2SzR"],
        ["161.97.72.41:31245", "2BDda2WmWExY8kEZzG3RHBMSrzvm6yXRosAZsku9bGoBv8Eh3"],
        ["161.97.93.126:31245", "2YYLkmVoPcXdygrCi1Fe5ooXrSF3VvXgi83RchRPjM4FbjbxZ5"],
        ["162.55.217.154:31245", "2JovXCitXTuZStH4cFcXRUc73U1Vmb5CGFozXDF64RUMkr3zp6"],
        ["162.55.218.64:31245", "2nQJYPPYRKikSEkYQcvdvSJqyVjTTWP6MjnEkhBsXag6auFmGN"],
        ["162.55.246.165:31245", "2mnVZStNWX7zLJumCMe9aG4DxVWDGDVe7Go6i63Dvtd15Vg2rD"],
        ["162.55.55.137:31245", "92my9C3CTmR9WymF7ibCcCWWpdnbYSgG3qjTtf7ENkN5Cb3RB"],
        ["164.68.126.74:31245", "cGS9zbPV3t1AV3DjAb3iVewW9ERKek1xnWDXScPbpf7X1TnT8"],
        ["164.92.159.73:31245", "245oVoKxw9tyVpKTVzVwvpZwS8XCfkTNmcBBcYPXFSaVYgY21q"],
        ["167.235.59.17:31245", "2T1H5mm5DEBNqrHiWV3GzJk2cCKDkemRgnrbBqbxjMHhPZ4bhd"],
        ["167.71.221.52:31245", "tkkFiKDZY6BnMxsMxq2z8hjNJus3sBwwFWPnSa2McctqQkQPY"],
        ["167.86.107.147:31245", "2niTYVaScoDhspShd2JEi4uXoewV75CY5nrzu41MbUUHg5XSRN"],
        ["167.99.209.179:31245", "7sVgP8eoJ4pCzVEE9Hb1NHt6yqdKR3t5aujc3r2nkJSUkQtLwi"],
        ["168.119.163.211:31245", "d3qXLSpQwY1v7PusZt8a3SuPzAmYHiQk4toDkJFoYx9X9Srdc"],
        ["168.119.189.84:31245", "EEJDvPb1Zp5A8e6Ef3ndpMXvdkzmMwVPvgtSHwVqJ3B9z9qHy"],
        ["172.105.14.131:31245", "2pBstHQqrKgnUfH1qtJZPBbQjSJ5KAztAadF93qJXUtg6MdUmX"],
        ["173.249.2.88:31245", "2nHEm4ZPVQ8ju9iLf1frkZyEH7y5rHQeLEcVHLat6n17z61hgG"],
        ["176.223.132.171:31245", "Q3o5veacVoMhGkFx72MWGKkD1T8638J9HXFHQra3iVBCeVUr9"],
        ["176.57.189.117:31245", "2BLcv7SnknTwnGPsU7bHg9MZQJw7J8GUsANtE3GkAfoZX3tdAG"],
        ["178.18.242.169:31245", "mUfDJGSyGQdnayKDYci4WdEgXYMYpCDSuyHTeAkNhnjjMQNXn"],
        ["178.62.202.206:31245", "6BTVgJHnsfwy2f9KJpVPAzH5wDoGmYJDnJSTygwTqEuU8mU4Q9"],
        ["178.63.26.151:31245", "2awGYYXxcSEJnYErqqT5zE9hF8ybDY8HKxi2JJFyvJj73nd2Zz"],
        ["185.190.142.145:31245", "frPFPR9quWHsjoF7HgWVd2h7ehaWQXYs18c56E2w9QxUJymw8"],
        ["185.216.203.122:31245", "yXCRRVKVZPZQ2e2xUtS9zh1L4dyHpMwnhGVHBsFCyim8GtF6H"],
        ["185.217.125.168:31245", "2aJRk1HNk2MRvGrR1rzf9sNxAo8ppzq4LM3QSGfsPkwmiBJKmd"],
        ["185.252.234.89:31245", "2oseEup2tPRvfooTwT5mE2z2cKhK1XFPvTYSg7ogppkcTs1ix9"],
        ["185.51.121.224:31245", "BpUb2F593eeNJH6VHHDvDrEbbijNW7ggS6pVJmH4pFtA2rxwS"],
        ["188.120.254.117:31245", "228Va9THLg3W6FRVjU8ytVGa4qtRsMBKXGAQ9PpeE2WYTzbZji"],
        ["188.165.232.186:31245", "3JdnptycLwtZrnMog1nDpQvBBJpH231eTDZieugZSRKUG97Fo"],
        ["188.191.35.202:31245", "k9QFNfPzDnVcznEUro7TgH6bVXBxKcYTHt5LYMt5MaXFJhq5r"],
        ["192.248.163.223:31245", "7waqbYdu1V3VvtxtvoncymdLvQcVPYQQUMJfF6c1yiKih28DWD"],
        ["192.99.5.123:31245", "26AzgrxxPVdbug59RnD3964XykD6F8HK4BWgijkZNeYdN5NimG"],
        ["193.187.96.110:31245", "KkhTJaPzVSfasue4rvoBSFiv19HKfhS76AEGZDwvSwdpDCzha"],
        ["194.156.79.23:31245", "6uscLLig9FnKqL8vHpSJMNLPH3Ud6EAWLs4zvNduP2uwihPHLb"],
        ["194.233.65.199:31245", "Xwse1PVVmHfcAwUUBxeGbGRVcXzkh5aZLhTAFCP1ArDX3SLgx"],
        ["194.233.79.118:31245", "Av4X8Mv3oYQe5NELhdsQcqgVVF9xHQqsxyYkRU9PoLea2MDmh"],
        ["194.233.83.174:31245", "G1CsZiC1qqdnwJcaBagdnrh4VSH9mgNhg19JGVQAArikH8QPM"],
        ["194.233.84.224:31245", "87kJjGam2JqL84seerUpQmkxSjinzufkKyt7wFyLeqp5nxS8MA"],
        ["194.233.88.144:31245", "WKBGYU5CLhz564x96RgSquKKdVePKoSynwSs23PqgLHfUFhce"],
        ["194.233.90.102:31245", "2L826XwQv8GhRcX3Rqw8MqTJjQu93pLimciwPmq4K8DX7tDkQS"],
        ["195.201.125.39:31245", "2KF4jaUMKPDKCT2gom5CVaUGS3utLfpp9TLMM1ZJLiKg2CaQ5f"],
        ["195.201.141.203:31245", "rkFwY5jbPEmZf5zy74pddxucxCFVLtqTUULPbdSBzN3K29hER"],
        ["195.3.220.147:31245", "H6forQbztHPY9RxHV9vNWsTE6jZDHavq9Uy8apaeU6NMPNjLm"],
        ["198.100.147.148:31245", "2qYBpAtvE5gtiicEEaQLRL7LSkhjBgmBLsUQXtcwHgspuW1aWD"],
        ["198.27.74.52:31245", "FshA2S8YhpHBXkuFeKeq8tVF34FtYSJ3wk2LSxgvMZYkDmY23"],
        ["198.27.74.5:31245", "wQbN87JXJysgCLMHmHCfwQPivqj4WUTViB2NN2WBKZ2U4oLbm"],
        ["2.59.156.67:31245", "sodfEFuo2hgAWnphMysek64kp9yRNXEEUdwGKTX6Z8h7RxWCs"],
        ["207.180.252.36:31245", "2hdueUvdLmniaSG3S8qv46CH79R9ztKVHf4pfVACusESWF94CY"],
        ["212.23.221.223:31245", "2P3oAYa7GrQz2GyMMmebx359P15BYnEWsoDU1ifgantknTgGjb"],
        ["213.219.247.105:31245", "ft2WoMDfdnGh6XiramS93fwTcZrWbu1nt48J6ZWJfnivB9yjx"],
        ["23.88.97.178:31245", "2KdSnv1Cuw2xpwBteBemKKqkqmaN91o5itQptHSLe57DXbjwhx"],
        ["31.163.202.105:31245", "2Gb4y9sRNhhZJ9Xd8VDumrJpvxTa1w8P8tkccGRoAAnCQgwHdC"],
        ["38.242.196.170:31245", "2cSbnRHxPEvG633xR1e5YmEPC8ZdWEUVsuk5qv1xRNt2HRQpzT"],
        ["38.242.198.182:31245", "Eucw7pNbr3uT1ZrWzgEczAuNdDZrmne8S1hJSFnoxiTTf5NjA"],
        ["38.242.201.8:31245", "2D7mJjWYBAeuox8jmPyVPdQ7X7uuyxwd3bp5XujRpHBM9gDDMC"],
        ["38.242.207.98:31245", "W1rE1zfiYRyNAbT8M1m4Tp69a3HdTS6j4fjGCjV1Brssm1NR2"],
        ["38.242.209.58:31245", "bXQsi7WRpqJfjtfNBToBkXe8ehkjkpVsBFp6h66vu2wZ4LLkJ"],
        ["38.242.214.99:31245", "Adn2RaLKZbMLwuEBMk8Np6QVau42DUDaZna8VqaA9up5WSSrh"],
        ["38.242.239.46:31245", "2MZCq9MfQgR8dqGSSyN5qLfoFWFk4TkmfM8YQoxQoPhqpsjmxk"],
        ["45.144.31.117:31245", "23MxTynjsSFQQAtnSheagyqSHLb3yvN5Hy3ebmw1m4EqqjcSYn"],
        ["45.144.65.117:31245", "2sctzN7T6hPuokXZcpG7Y8DELLe8g75ENoidfC7Cwaf3jFxT1v"],
        ["45.144.65.125:31245", "xbWFL8zUuSmaP6QHcsH54d61pQyemJZ66KL4zguTSVQapvfhA"],
        ["45.147.199.108:31245", "27qyf1yyDVDUrz7M57Rc2wgwfCitYP71nUNfCqED6gsL3H3vnY"],
        ["45.151.123.247:31245", "2mJsWfb3JhgwUvkJD9NNRyPFYcPFpQ7MTNzjtGt8cAE9VjE6PC"],
        ["45.153.230.45:31245", "UxREBxB6eMEWVLHsZLk8EQR3SWLPsZZS7WRvy9VMx5YNnvwz9"],
        ["45.88.191.189:31245", "tMJnedRvrDLxGEr6MeeEViqbYsFRpXWtQY68xnejtwk8r626C"],
        ["49.12.195.138:31245", "2fns3fdtdZJ2SXfN4vj4QLhWVfCsjSabw7DgeCiba2bYzdUBAR"],
        ["49.12.225.126:31245", "25cFZ7qDXf8cWogVEHm74friEmzgzrav4FuXJ6QQa6vu6E3F6P"],
        ["49.12.81.25:31245", "Z1uXLMewunWByrDWwhKQNyWXLe5RMWRvcHaFB2qkUuzXPh25N"],
        ["5.161.115.130:31245", "287X5sDvFvVw774hmp8fXr5A7W4N9AfdTgT3bpRvaK3SCKmGWe"],
        ["5.161.47.141:31245", "5pBoHBqFmxrQR2rGWWEmtc8JLLbMXoZVaxvi2MbXezM8n4VNn"],
        ["5.189.128.147:31245", "23x1u1mZjpmUiJZncRPGUvRVmJdk532JGpzVsnKoigAMFrFaVW"],
        ["5.189.169.142:31245", "23EqQaRGuNqjaKxdViCUvDNEVFBietQqCszk9BEnDjGHh5chyu"],
        ["5.9.48.90:31245", "2Bh9HcvFUGRUnjTS3nK5xoteBrsJjEJ8YwZP9EenjyCpTeBU7Y"],
        ["5.9.98.253:31245", "XmTWi6Eia5ubgPGQXQogB1XCW21Q1KRZshA6soPnTDwcBgU1V"],
        ["51.75.60.228:31245", "2jSHRWDv7S1RR4TuQLYHPw4mEawQVBxVARbgoZByH4s7cYrnVN"],
        ["54.36.174.177:31245", "xzGjgD7BBxTJZYo4p522TQzTkMUbKF3cVgfvuwjVdzo4XJgDM"],
        ["62.141.36.24:31245", "22xWAXREmhswvG39dfx1izCDoqvtErFZHE9KQWhR56dw2keFma"],
        ["62.171.171.11:31245", "22xHNpigERheYuk68uXjhDN6dy8AgKS3zaMu8uPje2FuHMHXGB"],
        ["65.108.14.154:31245", "m4gfvJJWQ5XWxevutt5akEcdpW9n9aqumP9tMuQZDaMXrN6SC"],
        ["65.108.148.172:31245", "28z2idSM5jQSAY1obgjWNWg6GTCtHPpvQJAopomvEaPML4Ggqa"],
        ["65.108.223.150:31245", "2tSLuTiKHE93KrNuAxaDRJmdLVPQzHFozJQsZoBxDXjh7i83pT"],
        ["65.108.225.106:31245", "6bEUWMAJCbz4uapz44YwdNKgzfHGUQvXrwDvosguNmHFBDHVe"],
        ["65.108.246.26:31245", "2MpBkn4xbqVXCoH53UnwgqyQwAWX8DUWsQrvSGBP2QJdjiqX3q"],
        ["65.108.4.183:31245", "2s8Vysv3QHHb4bkorFwQathfoGK6QVx3Hx2MqYXcee4fJHjNto"],
        ["65.108.4.184:31245", "Akc3Rb5DGH1PgWToeVdPHRjdFUJ8i5Fm21SkvxWVU3jYwF1qA"],
        ["65.108.48.217:31245", "2qgSSJygqTTJCT5Kim4EjgYeYzPeZUUmk7nQCU1CQHTbmeDD1D"],
        ["65.108.49.22:31245", "8gfAXWTyyA8dT51ukX2xtbu2jrTr9yPYK3k856yq7Hk4sm4ArC"],
        ["65.108.57.69:31245", "2ZryVL1xedn8cXQuKnUYZ1SVyiARBUL5SogcS8dGJ9XjkRYW7L"],
        ["65.108.80.87:31245", "2c7xQzVt4pcZz4qW3z45eUUMngrFXFA1BFeJkxjHj2sXqfvMDE"],
        ["65.109.7.53:31245", "8V2h1bfQkQtmTjky62RBLckfDFnWYj1sVHqawZ27jrgxYH344"],
        ["65.21.241.100:31245", "24gcjZjVgwuBiqxfCK2jevrSMpV8BnM2TCrEPomVyszDGky8C2"],
        ["65.21.254.225:31245", "2jvgQ9kP52Fwr6jgMd3M2QfrCriMuUycT7ecj6W9WDipZYeSUA"],
        ["65.21.79.97:31245", "24ZQjtr2kUHKkFk6jX9oXrYVrWoCKCMtMPfFD5JywaAQFKhAjU"],
        ["66.94.112.223:31245", "ofENug37Kc84UMCziz8yAT5edDgtVPbrHqPJEoMezbsoEmKkK"],
        ["66.94.122.210:31245", "2toVN8ZgpzP4hDg9XkwggCVRXhNE7XKyGcjNSfaAsn3FAhFy7x"],
        ["74.119.192.245:31245", "2eCYDY2sogpa9s9YCAvESbPACJZqQgx63PpHXAdYjPjybphJTu"],
        ["75.119.141.88:31245", "2Z56wK6XLgszAHefmFVoQuj2grDZvtyrtY83JSeKVx5G76cN9M"],
        ["83.229.74.114:31245", "2VcT8mGMtrhVqL2FTpFf4n2kv8STtvjudtMbXZMxQeYiFuCuoK"],
        ["85.10.193.149:31245", "2CJRnj2hg468F7r4HnCBggWwajJhQYTbyUUSa8mTvvCRLUasbR"],
        ["85.190.254.191:31245", "L88ok7dSJdXmJvRSwk1UcHDsM8jmL68uy2qtS4mZJAH2PyEfG"],
        ["87.236.146.51:31245", "W15ATwKrJKF4ysquzZXEmWRY8FU7hqab1cBPwhFtmCTfuwfHT"],
        ["88.201.196.152:31245", "jreZfBtUqAYFQqHAEaMoDqZrabnhFHVJrLvei3zGR4hUVUofS"],
        ["88.218.168.148:31245", "2HX6S3TZHzuupfTA3eUtQ1E3jZAHJFf8y6ASJJn4W6hAo7H8eF"],
        ["89.163.149.144:31245", "2AisMdc7KMXxLfr3DGRVNnzrcnGStcPDAiKE3mJ9kJGspeoXTN"],
        ["89.163.149.146:31245", "m4uC8MkQQTgmNwQGTfWRFk19R75zetvMafDUq34aBsN8LotNn"],
        ["89.58.37.5:31245", "YRmE6q2Ggm2hegPWhUpAseVvMnT5hENBaQm9hXWACBkqgVFWp"],
        ["92.63.96.233:31245", "2FvfMHaemt9KQ4fkCpJnwhiyMSrH1JpG5Viy75MBiDTh5YeZFm"],
        ["93.186.200.69:31245", "Q7AmtBoWvcbGiT1D1F5kM7M9Y7RYhRuVsFG1qV4PeELpbpQPY"],
        ["94.250.202.223:31245", "2BjqTM5ZPd2DUP2DzDsz1SYE4A9usxsLVvqAZsWyVvrYq5HS9T"],
        ["95.216.216.17:31245", "2KaNPUUQscvnbMPdB66caXtDAHuZ4PdEn2dxBZpchotAVPXUmW"],
        ["95.217.131.23:31245", "2VSyRuuUHkXCGthfp3ahPuo8pfj1T4PRMn4dicDP4Uj1j7BSXV"],
        ["95.217.7.134:31245", "25cMk8bvUjbTsgiinFpm3fFN9DKDLPKtNkowRtC9V2GMs3GZeT"],
    ]
    retry_delay = 1000
EOF
