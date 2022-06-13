
IP=$(curl ip.gs)

tee <<EOF >/dev/null ~/massa/massa-node/config/config.toml
# massa/massa-node/config/config.toml
[network]
    routable_ip = "$IP"
    
[bootstrap]
    # list of bootstrap (ip, node id)
    bootstrap_list = [
	["109.205.182.12:31245", "NFMmXGvqfE8uLEANyNpxHLZ4sHQR4nAxehwEmK1f3FANtwtfU"],
	["116.203.24.18:31245", "VjeQRQzMGA3rBvDHADnph1UY7NmGP2jo7uGQge5KceQk5jwpZ"],
	["116.203.39.242:31245", "PwsF6JGsHXqLzXp2ZaB79swptAziXkF6oLW9F5Q217o1aGUab"],
	["116.203.97.105:31245", "ioEj6BAhMQjVYgE8zorRABhQ3AENmrz7JGQxVzz85n1D7AC6D"],
	["135.181.75.219:31245", "FK2zXrnyr1YKcFw4s3ZwQkGEthybQYFomKN6R3XVSJ7rue8Nf"],
	["141.95.108.187:31245", "EhSU3znNnAxbNZCdMUZ5KtgdfBPZyhP4TGr8sWreZhX67AGNs"],
	["154.26.128.79:31245", "kAkmZYHCPnnAEaoyygR8vaCqML3ue7ZP3R14JuE8k5Z7FNijJ"],
	["158.69.23.120:31245", "CzhbcUMKLmnkg9vzZUHVH6buzE22oToDxW7nndnYyETSh2fYn"],
	["159.223.78.58:31245", "xPfgqpJYvEccVkmz2MCxBAsrB8GfsgC2QWynGVmXHjCCefnJz"],
	["161.97.106.195:31245", "HTVbKBhBBtKB9Nm4CZfLNKdEDMq6apJYKp4XRJuXcEhEdoMAG"],
	["161.97.72.41:31245", "2BDda2WmWExY8kEZzG3RHBMSrzvm6yXRosAZsku9bGoBv8Eh3"],
	["162.55.55.137:31245", "92my9C3CTmR9WymF7ibCcCWWpdnbYSgG3qjTtf7ENkN5Cb3RB"],
	["164.68.126.74:31245", "cGS9zbPV3t1AV3DjAb3iVewW9ERKek1xnWDXScPbpf7X1TnT8"],
	["167.71.221.52:31245", "tkkFiKDZY6BnMxsMxq2z8hjNJus3sBwwFWPnSa2McctqQkQPY"],
	["168.119.163.211:31245", "d3qXLSpQwY1v7PusZt8a3SuPzAmYHiQk4toDkJFoYx9X9Srdc"],
	["168.119.189.84:31245", "EEJDvPb1Zp5A8e6Ef3ndpMXvdkzmMwVPvgtSHwVqJ3B9z9qHy"],
	["176.223.132.171:31245", "Q3o5veacVoMhGkFx72MWGKkD1T8638J9HXFHQra3iVBCeVUr9"],
	["178.18.242.169:31245", "mUfDJGSyGQdnayKDYci4WdEgXYMYpCDSuyHTeAkNhnjjMQNXn"],
	["185.190.142.145:31245", "frPFPR9quWHsjoF7HgWVd2h7ehaWQXYs18c56E2w9QxUJymw8"],
	["185.216.203.122:31245", "yXCRRVKVZPZQ2e2xUtS9zh1L4dyHpMwnhGVHBsFCyim8GtF6H"],
	["185.51.121.224:31245", "BpUb2F593eeNJH6VHHDvDrEbbijNW7ggS6pVJmH4pFtA2rxwS"],
	["188.165.232.186:31245", "3JdnptycLwtZrnMog1nDpQvBBJpH231eTDZieugZSRKUG97Fo"],
	["188.191.35.202:31245", "k9QFNfPzDnVcznEUro7TgH6bVXBxKcYTHt5LYMt5MaXFJhq5r"],
	["193.187.96.110:31245", "KkhTJaPzVSfasue4rvoBSFiv19HKfhS76AEGZDwvSwdpDCzha"],
	["194.233.65.199:31245", "Xwse1PVVmHfcAwUUBxeGbGRVcXzkh5aZLhTAFCP1ArDX3SLgx"],
	["194.233.79.118:31245", "Av4X8Mv3oYQe5NELhdsQcqgVVF9xHQqsxyYkRU9PoLea2MDmh"],
	["194.233.83.174:31245", "G1CsZiC1qqdnwJcaBagdnrh4VSH9mgNhg19JGVQAArikH8QPM"],
	["194.233.88.144:31245", "WKBGYU5CLhz564x96RgSquKKdVePKoSynwSs23PqgLHfUFhce"],
	["195.201.141.203:31245", "rkFwY5jbPEmZf5zy74pddxucxCFVLtqTUULPbdSBzN3K29hER"],
	["195.3.220.147:31245", "H6forQbztHPY9RxHV9vNWsTE6jZDHavq9Uy8apaeU6NMPNjLm"],
	["198.27.74.52:31245", "FshA2S8YhpHBXkuFeKeq8tVF34FtYSJ3wk2LSxgvMZYkDmY23"],
	["198.27.74.5:31245", "wQbN87JXJysgCLMHmHCfwQPivqj4WUTViB2NN2WBKZ2U4oLbm"],
	["2.59.156.67:31245", "sodfEFuo2hgAWnphMysek64kp9yRNXEEUdwGKTX6Z8h7RxWCs"],
	["213.219.247.105:31245", "ft2WoMDfdnGh6XiramS93fwTcZrWbu1nt48J6ZWJfnivB9yjx"],
	["38.242.198.182:31245", "Eucw7pNbr3uT1ZrWzgEczAuNdDZrmne8S1hJSFnoxiTTf5NjA"],
	["38.242.207.98:31245", "W1rE1zfiYRyNAbT8M1m4Tp69a3HdTS6j4fjGCjV1Brssm1NR2"],
	["38.242.209.58:31245", "bXQsi7WRpqJfjtfNBToBkXe8ehkjkpVsBFp6h66vu2wZ4LLkJ"],
	["38.242.214.99:31245", "Adn2RaLKZbMLwuEBMk8Np6QVau42DUDaZna8VqaA9up5WSSrh"],
	["45.144.65.125:31245", "xbWFL8zUuSmaP6QHcsH54d61pQyemJZ66KL4zguTSVQapvfhA"],
	["45.153.230.45:31245", "UxREBxB6eMEWVLHsZLk8EQR3SWLPsZZS7WRvy9VMx5YNnvwz9"],
	["45.88.191.189:31245", "tMJnedRvrDLxGEr6MeeEViqbYsFRpXWtQY68xnejtwk8r626C"],
	["49.12.81.25:31245", "Z1uXLMewunWByrDWwhKQNyWXLe5RMWRvcHaFB2qkUuzXPh25N"],
	["5.161.47.141:31245", "5pBoHBqFmxrQR2rGWWEmtc8JLLbMXoZVaxvi2MbXezM8n4VNn"],
	["5.9.98.253:31245", "XmTWi6Eia5ubgPGQXQogB1XCW21Q1KRZshA6soPnTDwcBgU1V"],
	["54.36.174.177:31245", "xzGjgD7BBxTJZYo4p522TQzTkMUbKF3cVgfvuwjVdzo4XJgDM"],
	["65.108.14.154:31245", "m4gfvJJWQ5XWxevutt5akEcdpW9n9aqumP9tMuQZDaMXrN6SC"],
	["65.108.225.106:31245", "6bEUWMAJCbz4uapz44YwdNKgzfHGUQvXrwDvosguNmHFBDHVe"],
	["65.108.4.184:31245", "Akc3Rb5DGH1PgWToeVdPHRjdFUJ8i5Fm21SkvxWVU3jYwF1qA"],
	["65.109.7.53:31245", "8V2h1bfQkQtmTjky62RBLckfDFnWYj1sVHqawZ27jrgxYH344"],
	["66.94.112.223:31245", "ofENug37Kc84UMCziz8yAT5edDgtVPbrHqPJEoMezbsoEmKkK"],
	["85.190.254.191:31245", "L88ok7dSJdXmJvRSwk1UcHDsM8jmL68uy2qtS4mZJAH2PyEfG"],
	["87.236.146.51:31245", "W15ATwKrJKF4ysquzZXEmWRY8FU7hqab1cBPwhFtmCTfuwfHT"],
	["88.201.196.152:31245", "jreZfBtUqAYFQqHAEaMoDqZrabnhFHVJrLvei3zGR4hUVUofS"],
	["89.163.149.146:31245", "m4uC8MkQQTgmNwQGTfWRFk19R75zetvMafDUq34aBsN8LotNn"],
	["89.58.37.5:31245", "YRmE6q2Ggm2hegPWhUpAseVvMnT5hENBaQm9hXWACBkqgVFWp"],
	["93.186.200.69:31245", "Q7AmtBoWvcbGiT1D1F5kM7M9Y7RYhRuVsFG1qV4PeELpbpQPY"],
    ]
    retry_delay = 1000
EOF
