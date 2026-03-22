-- 本テーブル
CREATE TABLE books (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
author VARCHAR(255),
isbn VARCHAR(50),
stock INT DEFAULT 0,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ユーザーテーブル
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 貸出テーブル
CREATE TABLE loans (
id SERIAL PRIMARY KEY,
book_id INT NOT NULL,
user_id INT NOT NULL,
loan_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
return_date TIMESTAMP,

```
FOREIGN KEY (book_id) REFERENCES books(id),
FOREIGN KEY (user_id) REFERENCES users(id)
```

);
