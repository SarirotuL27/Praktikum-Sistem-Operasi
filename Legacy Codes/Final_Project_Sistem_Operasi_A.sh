z=0
menu=0

Pendaftaran(){
    let z=$z+1
    echo -n "Nomor Porsi (bln+6digit)                : "
    read nopor[$z]
    echo -n "Tanggal Pendaftaran (tgl/bln)           : "
    read tgl[$z]
    echo -n "Tahun Pendaftaran                       : "
    read tahun[$z]
    echo -n "Nama                                    : "
    read nama[$z]
    echo -n "Alamat                                  : "
    read alamat[$z]
    echo -n "Kab/Kota                                : "
    read kabkot[$z]
    echo -n "Provinsi                                : "
    read prov[$z]
    echo -n "Riwayat Kesehatan                       : "
    read rikes[$z]
    echo -n "Kuota provinsi/khusus (33000-35000)     : "
    read kuota[$z]
    let posisi[$z]=(${kuota[$z]}*${tahun[$z]})/${tgl[$z]}
    echo -n "Posisi porsi pada kuota provinsi/khusus : ${posisi[$z]}"
    let m[$z]=(${posisi[$z]}/${kuota[$z]})+${tahun[$z]}+10
    let h[$z]=${m[$z]}-579
    printf "\n"
    echo -n "Tahun Perkiraan berangkat               : ${h[$z]} H/${m[$z]} M"
    printf "\n"
    echo -n "Pembayaran (Lunas/DP)                   : "
    read byr[$z]
}

LihatData(){
    for((a=1;a<=z;a++))
        do
            echo -n "Nomor Porsi                             : ${nopor[$a]}"
            printf "\n"
            echo -n "Tanggal Pendaftaran                     : ${tgl[$a]}"
            printf "\n"
            echo -n "Tahun Pendaftaran                       : ${tahun[$a]}"
            printf "\n"
            echo -n "Nama                                    : ${nama[$a]}"
            printf "\n"
            echo -n "Alamat                                  : ${alamat[$a]}"
            printf "\n"
            echo -n "Kab/Kota                                : ${kabkot[$a]}"
            printf "\n"
            echo -n "Provinsi                                : ${prov[$a]}"
            printf "\n"
            echo -n "Riwayat Kesehatan                       : ${rikes[$a]}"
            printf "\n"
            echo -n "Kuota provinsi/khusus (33000-35000)     : ${kuota[$a]}"
            printf "\n"
            echo -n "Posisi porsi pada kuota provinsi/khusus : ${posisi[$a]}"
            printf "\n"
            echo -n "Tahun Perkiraan berangkat               : ${h[$a]} H/${m[$a]} M"
            printf "\n"
            echo -n "Pembayaran (Lunas/DP)                   : ${byr[$a]}"
            printf "\n"
            printf "\n"
            echo "-----------------------------------------------------"
        done
}

Data(){
            echo -n "Masukkan Nomor Porsi : "
            read cari
            a=0
            b=0
            while [ $a -le $z ] && [ $b == 0 ]
            do
                        let a=$a+1
                        if [ "${nopor[a]}" == $cari ]
                        then
                                    b=1
                        fi
            done
}

EditData(){
    Data
    if [ $a -le $z ]
    then
        echo -n "Nomor Porsi                             : ${nopor[$a]}"
        printf "\n"
        echo -n "Tanggal Pendaftaran                     : ${tgl[$a]}"
        printf "\n"
        echo -n "Tahun Pendaftaran                       : ${tahun[$a]}"
        printf "\n"
        echo -n "Nama                                    : ${nama[$a]}"
        printf "\n"
        echo -n "Alamat                                  : ${alamat[$a]}"
        printf "\n"
        echo -n "Kab/Kota                                : ${kabkot[$a]}"
        printf "\n"
        echo -n "Provinsi                                : ${prov[$a]}"
        printf "\n"
        echo -n "Riwayat Kesehatan                       : ${rikes[$a]}"
        printf "\n"
        echo -n "Posisi porsi pada kuota provinsi/khusus : ${posisi[$a]}"
        printf "\n"
        echo -n "Tahun Perkiraan berangkat               : ${h[$a]} H/${m[$a]} M"
        printf "\n"
        echo -n "Pembayaran (Lunas/DP)                   : ${byr[$a]}"
        printf "\n"
        echo "-----------------------------------------------------"
        echo -n "Nomor Porsi (bln+6digit)                : "
        read nopor[$a]
        echo -n "Tanggal Pendaftaran (tgl/bln)           : "
        read tgl[$a]
        echo -n "Tahun Pendaftaran                       : "
        read tahun[$a]
        echo -n "Nama                                    : "
        read nama[$a]
        echo -n "Alamat                                  : "
        read alamat[$a]
        echo -n "Kab/Kota                                : "
        read kabkot[$a]
        echo -n "Provinsi                                : "
        read prov[$a]
        echo -n "Riwayat Kesehatan                       : "
        read rikes[$a]
        echo -n "Kuota provinsi/khusus (33000-35000)     : "
        read kuota[$a]
        let posisi[$a]=(${kuota[$a]}*${tahun[$a]})/${tgl[$a]}
        echo -n "Posisi porsi pada kuota provinsi/khusus : ${posisi[$a]}"
        let m[$a]=(${posisi[$a]}/${kuota[$a]})+${tahun[$a]}+10
        let h[$a]=${m[$a]}-579
        printf "\n"
        echo -n "Tahun Perkiraan berangkat               : ${h[$a]} H/${m[$a]} M"
        printf "\n"
        echo -n "Pembayaran (Lunas/DP)                   : "
        read byr[$a]
    else
        echo "Data Tidak Ada"
    fi
}

HapusData(){
    Data
    if [ $a -gt $z ]
    then
        echo "Data Tidak Ada"
    else
        while [ $a -lt $z ]
        do
            let b=$a+1
            nopor[$a]=${nopor[$b]}
            tgl[$a]=${tgl[$b]}
            tahun[$a]=${tahun[$b]}
            nama[$a]=${nama[$b]}
            alamat[$a]=${alamat[$b]}
            kabkot[$a]=${kabkot[$b]}
            prov[$a]=${prov[$b]}
            rikes[$a]=${rikes[$b]}
            kuota[$a]=${kuota[$b]}
            posisi[$a]=${posisi[$b]}
            m[$a]=${m[$b]}
            h[$a]=${h[$b]}
            byr[$a]=${byr[$b]}
            let a=$a+1
            done
                let z=$z-1
                echo "Data $cari Berhasil Dihapus"
            fi
}

CariData(){
            Data
            if [ $a -le $z ]
            then
                echo -n "Nomor Porsi                             : ${nopor[$a]}"
                printf "\n"
                echo -n "Tanggal Pendaftaran                     : ${tgl[$a]}"
                printf "\n"
                echo -n "Tahun Pendaftaran                       : ${tahun[$a]}"
                printf "\n"
                echo -n "Nama                                    : ${nama[$a]}"
                printf "\n"
                echo -n "Alamat                                  : ${alamat[$a]}"
                printf "\n"
                echo -n "Kab/Kota                                : ${kabkot[$a]}"
                printf "\n"
                echo -n "Provinsi                                : ${prov[$a]}"
                printf "\n"
                echo -n "Riwayat Kesehatan                       : ${rikes[$a]}"
                printf "\n"
                echo -n "Kuota provinsi/khusus (33000-35000)     : ${kuota[$a]}"
                printf "\n"
                echo -n "Posisi porsi pada kuota provinsi/khusus : ${posisi[$a]}"
                printf "\n"
                echo -n "Tahun Perkiraan berangkat               : ${h[$a]} H/${m[$a]} M"
                printf "\n"
                echo -n "Pembayaran (Lunas/DP)                   : ${byr[$a]}"
            else
                echo "Data Tidak Ada"
            fi
}

while [ $menu != 6 ]
do
            printf "\n"
            echo "======= Penyelenggaraan Ibadah haji ======= "
            printf "\n"
            echo "1. Pendaftaran"
            echo "2. LihatData"
            echo "3. EditData"
            echo "4. HapusData"
            echo "5. CariData"
            echo "6. Keluar"
            printf "Pilihan : \n"
            read menu
            if [ $menu -eq 1 ]
            then
                        Pendaftaran 
            elif [ $menu -eq 2 ]
            then
                        if [ $z -lt 1 ]
                        then
                                    echo "kosong "
                        else
                                    LihatData
                        fi
            elif [ $menu -eq 3 ]
            then
                        EditData         
            elif [ $menu -eq 4 ]
            then
                        HapusData
            elif [ $menu -eq 5 ]
            then
                        CariData
            elif [ $menu -eq 6 ]
            then
                        printf "\nTerima Kasih Telah Menggunakan Program Ini\n"
            else
                        echo "Salah "
            fi
            echo ""
done
clear
exit 1
