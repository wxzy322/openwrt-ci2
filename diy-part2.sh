sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
# 活动连接数修改
# sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#6.6连接数
#sed -i '/customized in this file/a fs.file-max=102400\nnet.ipv4.neigh.default.gc_thresh1=512\nnet.ipv4.neigh.default.gc_thresh2=2048\nnet.ipv4.neigh.default.gc_thresh3=4096\nnet.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf
# 6.6修正连接数（by ベ七秒鱼ベ）
#sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf

# sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate

sed -i 's/16384/65536/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
