# Kasir API

REST API untuk sistem manajemen kasir dengan fitur CRUD Produk dan Kategori.

## Tech Stack

- **Language**: Go (Golang)
- **Framework**: Standard library `net/http`
- **Storage**: In-memory (slice)

## Setup

### Requirements
- Go 1.16+

### Installation

1. Clone atau download project
```bash
cd c:/Golang/kasir-api
```

2. Run project
```bash
go run main.go
```

3. Server akan berjalan di `http://localhost:8080`

## API Endpoints

### Health Check
- **GET** `/health` - Status server

**Response:**
```json
{
  "status": "OK",
  "message": "API Running"
}
```

---

### Produk

#### 1. Ambil Semua Produk
- **GET** `/api/produk`

**Response:**
```json
[
  {
    "id": 1,
    "nama": "Indomie Godog",
    "harga": 3500,
    "stok": 10
  }
]
```

#### 2. Ambil Produk by ID
- **GET** `/api/produk/{id}`
- **Contoh**: `GET /api/produk/1`

#### 3. Tambah Produk Baru
- **POST** `/api/produk`
- **Content-Type**: `application/json`

**Request Body:**
```json
{
  "nama": "Mie Sedaap",
  "harga": 3500,
  "stok": 20
}
```

**Response (201 Created):**
```json
{
  "id": 6,
  "nama": "Mie Sedaap",
  "harga": 3500,
  "stok": 20
}
```

#### 4. Update Produk
- **PUT** `/api/produk/{id}`
- **Contoh**: `PUT /api/produk/1`

**Request Body:**
```json
{
  "nama": "Indomie Updated",
  "harga": 4000,
  "stok": 15
}
```

#### 5. Hapus Produk
- **DELETE** `/api/produk/{id}`
- **Contoh**: `DELETE /api/produk/1`

**Response:**
```json
{
  "message": "sukses delete"
}
```

---

### Categories

#### 1. Ambil Semua Kategori
- **GET** `/api/categories`

**Response:**
```json
[
  {
    "id": 1,
    "nama": "Makanan",
    "deskripsi": "Kategori makanan ringan dan berat"
  }
]
```

#### 2. Ambil Kategori by ID
- **GET** `/api/categories/{id}`
- **Contoh**: `GET /api/categories/1`

#### 3. Tambah Kategori Baru
- **POST** `/api/categories`

**Request Body:**
```json
{
  "nama": "Minuman Dingin",
  "deskripsi": "Minuman dingin dan segar"
}
```

**Response (201 Created):**
```json
{
  "id": 4,
  "nama": "Minuman Dingin",
  "deskripsi": "Minuman dingin dan segar"
}
```

#### 4. Update Kategori
- **PUT** `/api/categories/{id}`
- **Contoh**: `PUT /api/categories/1`

**Request Body:**
```json
{
  "nama": "Kategori Updated",
  "deskripsi": "Deskripsi baru"
}
```

#### 5. Hapus Kategori
- **DELETE** `/api/categories/{id}`
- **Contoh**: `DELETE /api/categories/1`

**Response:**
```json
{
  "message": "sukses delete"
}
```

---

## Project Structure

```
kasir-api/
├── main.go          # Main application dengan semua endpoints
├── go.mod           # Go module file
└── README.md        # Documentation (file ini)
```

## Data Models

### Produk
```go
type Produk struct {
    ID    int    `json:"id"`
    Nama  string `json:"nama"`
    Harga int    `json:"harga"`
    Stok  int    `json:"stok"`
}
```

### Categories
```go
type Categories struct {
    ID        int    `json:"id"`
    Nama      string `json:"nama"`
    Deskripsi string `json:"deskripsi"`
}
```

## HTTP Status Codes

| Code | Meaning |
|------|---------|
| 200 | OK - Request berhasil |
| 201 | Created - Data berhasil dibuat |
| 400 | Bad Request - Request tidak valid |
| 404 | Not Found - Data tidak ditemukan |

## Error Response

**Format error:**
```json
{
  "error": "Pesan error"
}
```

**Contoh:**
```json
{
  "error": "Produk belum ada"
}
```

## Testing dengan Postman

### 1. GET Semua Produk
```
Method: GET
URL: http://localhost:8080/api/produk
```

### 2. POST Produk Baru
```
Method: POST
URL: http://localhost:8080/api/produk
Content-Type: application/json

Body:
{
  "nama": "Produk Baru",
  "harga": 5000,
  "stok": 10
}
```

### 3. GET Produk by ID
```
Method: GET
URL: http://localhost:8080/api/produk/1
```

### 4. PUT Update Produk
```
Method: PUT
URL: http://localhost:8080/api/produk/1
Content-Type: application/json

Body:
{
  "nama": "Produk Updated",
  "harga": 6000,
  "stok": 5
}
```

### 5. DELETE Produk
```
Method: DELETE
URL: http://localhost:8080/api/produk/1
```

### 6. GET Semua Kategori
```
Method: GET
URL: http://localhost:8080/api/categories
```

### 7. POST Kategori Baru
```
Method: POST
URL: http://localhost:8080/api/categories
Content-Type: application/json

Body:
{
  "nama": "Kategori Baru",
  "deskripsi": "Deskripsi kategori"
}
```

---

## Important Notes

- **Data Storage**: Semua data disimpan di in-memory (akan hilang saat server di-restart)
- **ID Generation**: ID baru otomatis di-generate berdasarkan `len(slice) + 1`
- **Production**: Untuk production environment, gunakan database seperti PostgreSQL, MySQL, atau MongoDB
- **Consistency**: Gunakan bahasa yang konsisten (Indonesian atau English) untuk production

## Future Improvements

- [ ] Database integration (PostgreSQL/MySQL)
- [ ] Authentication & Authorization (JWT)
- [ ] Input validation
- [ ] Swagger API documentation
- [ ] Unit tests & Integration tests
- [ ] Logging system
- [ ] Error handling middleware
- [ ] Rate limiting

---

## Author

**Createdby Ramadi Sadikin for learning Go REST APIs**

Last Updated: January 22, 2026
