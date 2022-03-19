class SinggahItem {
  final String nama;
  final String owner;
  final String rating;
  final String viewer;
  final String harga;
  final String kamar;
  final String kapasitas;
  final String gambar;
  final String jarak;
  final List<String> fasilitas;

  SinggahItem(
      {required this.nama,
      required this.owner,
      required this.rating,
      required this.viewer,
      required this.harga,
      required this.kamar,
      required this.kapasitas,
      required this.gambar,
      required this.jarak,
      required this.fasilitas});
}

var ListItemSinggahTerdekat = [
  SinggahItem(
      nama: 'Kayala',
      owner: 'kayala',
      rating: '4.8',
      viewer: '200',
      harga: '100',
      kamar: '1',
      kapasitas: '2',
      gambar: 'image/1.jpeg',
      jarak: '0.3',
      fasilitas: [
        'Kamar berAC',
        'Free Breakfast',
        'Dekat dari Kebun Binatang',
        'TV + Netflix',
        'Kasur untuk 2 orang',
        'Sofa',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Joglo',
      owner: 'Agus',
      rating: '4.5',
      viewer: '80',
      harga: '120',
      kamar: '2',
      kapasitas: '4',
      gambar: 'image/2.jpeg',
      jarak: '0.3',
      fasilitas: [
        'Kamar berAC',
        'Dekat Alun Alun Kota',
        'TV + Netflix',
        '2 Kasur',
        'Kamar Mandi didalam',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Wiladatika',
      owner: 'Kevin',
      rating: '4.7',
      viewer: '400',
      harga: '200',
      kamar: '1',
      kapasitas: '2',
      gambar: 'image/3.jpeg',
      jarak: '0.5',
      fasilitas: [
        'Kamar berAC',
        'Free Breakfast',
        'Dekat Exit Toll',
        'TV + Netflix + Disney+',
        'Kasur untuk 2 orang',
        'Air Panas untuk Mandi',
        'Sofa',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Sindur',
      owner: 'Lala',
      rating: '4.2',
      viewer: '50',
      harga: '90',
      kamar: '1',
      kapasitas: '1',
      gambar: 'image/4.jpeg',
      jarak: '0.8',
      fasilitas: [
        'Kamar berAC',
        '5 Menit dari Tempat Wisata',
        'TV',
        'Kasur untuk 1 orang',
        'Wifi',
      ]),
];

var ListItemSinggahHargaBersahabat = [
  SinggahItem(
      nama: 'Pinus',
      owner: 'Tio',
      rating: '4.3',
      viewer: '100',
      harga: '80',
      kamar: '1',
      kapasitas: '1',
      gambar: 'image/5.jpeg',
      jarak: '1.6',
      fasilitas: [
        'Kamar berAC',
        'Dekat Alun Alun',
        'TV',
        'Kasur untuk 1 orang',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Bahagia',
      owner: 'Aris',
      rating: '4.5',
      viewer: '100',
      harga: '90',
      kamar: '1',
      kapasitas: '1',
      gambar: 'image/6.jpeg',
      jarak: '1.3',
      fasilitas: [
        'Kamar berAC',
        'Dekat Alun Alun',
        'TV',
        'Kasur untuk 1 orang',
        'Sofa',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Gulo',
      owner: 'Farid',
      rating: '4.7',
      viewer: '123',
      harga: '100',
      kamar: '1',
      kapasitas: '1',
      gambar: 'image/7.jpeg',
      jarak: '1.9',
      fasilitas: [
        'Kamar berAC',
        'Free Breakfast',
        'Dekat Exit Toll',
        'TV',
        'Kasur untuk 1 orang',
        'Sofa',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Delima',
      owner: 'Juna',
      rating: '4.5',
      viewer: '79',
      harga: '100',
      kamar: '1',
      kapasitas: '2',
      gambar: 'image/8.jpeg',
      jarak: '.1',
      fasilitas: [
        'Kamar berAC',
        '5 Menit dari Tempat Wisata',
        'TV',
        'Kasur untuk 2 orang',
        'Wifi',
      ]),
];

var ListItemSinggahPilihanKami = [
  SinggahItem(
      nama: 'Lodaya',
      owner: 'Handi',
      rating: '4.8',
      viewer: '564',
      harga: '120',
      kamar: '2',
      kapasitas: '4',
      gambar: 'image/9.jpeg',
      jarak: '1.5',
      fasilitas: [
        'Kamar berAC',
        'Kamar Mandi 2',
        'Free Breakfast',
        'Dekat dengan Pusat Kota',
        'TV + Netflix',
        'Kasur untuk 2 orang',
        'Tipe Kasur King',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Arizona',
      owner: 'Justin',
      rating: '4.9',
      viewer: '621',
      harga: '130',
      kamar: '2',
      kapasitas: '4',
      gambar: 'image/10.jpeg',
      jarak: '1.5',
      fasilitas: [
        'Kamar berAC',
        'Kamar Mandi 2',
        'Free Breakfast',
        'Dekat Alun Alun dan Wisata',
        'TV + Netflix',
        'Kasur untuk 2 orang',
        'Sofa',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Karyalula',
      owner: 'Lula',
      rating: '4.9',
      viewer: '598',
      harga: '190',
      kamar: '2',
      kapasitas: '6',
      gambar: 'image/11.jpeg',
      jarak: '3.8',
      fasilitas: [
        'Kamar berAC',
        'Kamar Mandi 2',
        'Free Breakfast',
        'Dekat dengan Pusat Kota',
        'TV + Netflix',
        'Kasur untuk 3 orang',
        'Pemandian Air Panas',
        'Wifi',
      ]),

      SinggahItem(
      nama: 'Khaila',
      owner: 'Zahra',
      rating: '4.9',
      viewer: '679',
      harga: '200',
      kamar: '2',
      kapasitas: '6',
      gambar: 'image/12.jpeg',
      jarak: '3.2',
      fasilitas: [
        'Kamar berAC',
        'Kamar Mandi 2',
        'Free Breakfast',
        'Dekat dengan Stasiun dan Pusat Kota',
        'TV + Netflix',
        'PS4',
        'Kasur untuk 2 orang',
        'Tipe Kasur King',
        'Wifi',
      ]),
];

