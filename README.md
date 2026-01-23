# Kasir API

## Daftar API Endpoints

### Produk

#### 1. Get All Produk
- **Method:** `GET`
- **Endpoint:** `/api/produk`
- **Deskripsi:** Mengambil semua data produk

#### 2. Get Produk By ID
- **Method:** `GET`
- **Endpoint:** `/api/produk/{id}`
- **Deskripsi:** Mengambil data produk berdasarkan ID

#### 3. Create Produk
- **Method:** `POST`
- **Endpoint:** `/api/produk`
- **Deskripsi:** Menambahkan produk baru
- **Body:**
```json
{
  "nama": "string",
  "harga": number,
  "stok": number
}
```

#### 4. Update Produk
- **Method:** `PUT`
- **Endpoint:** `/api/produk/{id}`
- **Deskripsi:** Mengupdate data produk berdasarkan ID
- **Body:**
```json
{
  "nama": "string",
  "harga": number,
  "stok": number
}
```

#### 5. Delete Produk
- **Method:** `DELETE`
- **Endpoint:** `/api/produk/{id}`
- **Deskripsi:** Menghapus produk berdasarkan ID

---

### Categories

#### 6. Get All Categories
- **Method:** `GET`
- **Endpoint:** `/categories`
- **Deskripsi:** Mengambil semua data kategori

#### 7. Get Category By ID
- **Method:** `GET`
- **Endpoint:** `/categories/{id}`
- **Deskripsi:** Mengambil data kategori berdasarkan ID

#### 8. Create Category
- **Method:** `POST`
- **Endpoint:** `/categories`
- **Deskripsi:** Menambahkan kategori baru
- **Body:**
```json
{
  "nama": "string",
  "deskripsi": "string"
}
```

#### 9. Update Category
- **Method:** `PUT`
- **Endpoint:** `/categories/{id}`
- **Deskripsi:** Mengupdate data kategori berdasarkan ID
- **Body:**
```json
{
  "nama": "string",
  "deskripsi": "string"
}
```

#### 10. Delete Category
- **Method:** `DELETE`
- **Endpoint:** `/categories/{id}`
- **Deskripsi:** Menghapus kategori berdasarkan ID

---

### Health Check

#### 11. Health Check
- **Method:** `GET`
- **Endpoint:** `/health`
- **Deskripsi:** Mengecek status API
- **Response:**
```json
{
  "status": "OK",
  "message": "API Running"
}
```

---