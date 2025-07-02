MYSQL
## 느낀 점
- 오타: 끝에 ; 주의하기
- UNIQU와 DEFAULT 옵션 동시에 불가, 충돌됌, 처음에 설정 잘 하기
- 현재 사용 중인 파일, db 확인하기
- 안전모드가 켜져 있어서 drop이 안될 수 있음

### 1. 데이터베이스(Database) 관리
- **생성**: 새로운 데이터베이스 생성
  ```sql
  CREATE DATABASE database_name;
  ```
  예: `CREATE DATABASE lecture;`

- **확인**: 현재 데이터베이스 형태 보기
  ```sql
  DESC DATABASES;
  ```

- **삭제**: 데이터베이스 삭제
  ```sql
  DROP DATABASE database_name;
  ```
  예: `DROP DATABASE practice_db;`

- **사용**: 특정 데이터베이스 선택
  ```sql
  USE database_name;
  ```
  예: `USE lecture;`

---

### 2. 테이블(Table) 관리
- **생성**: 테이블 생성 (컬럼과 데이터 타입, 제약 조건 정의)
  ```sql
  CREATE TABLE table_name (
      column_name1 datatype constraints,
      column_name2 datatype constraints
  );
  ```
  예:
  ```sql
  CREATE TABLE members (
      id INT AUTO_INCREMENT PRIMARY KEY,  -- 자동 증가, 기본 키
      name VARCHAR(30) NOT NULL,         -- 필수 입력
      email VARCHAR(100) UNIQUE,         -- 중복 불가
      join_date DATE DEFAULT(CURRENT_DATE) -- 기본값: 오늘
  );
  ```

- **확인**: 테이블 보기
  ```sql 
  SELECT * FROM members
  ```

- **구조 확인**: 테이블의 컬럼 정보 확인
  ```sql
  DESC table_name;
  ```
  예: `DESC members;`

- **삭제**: 테이블 삭제
  ```sql
  DROP TABLE table_name;
  ```
  예: `DROP TABLE sample;`

- **스키마 변경**:
  - 컬럼 추가
    ```sql
    ALTER TABLE table_name ADD COLUMN column_name datatype [constraints];
    ```
    예: `ALTER TABLE members ADD COLUMN age INT NOT NULL DEFAULT 20;`
  - 컬럼 이름 및 타입 변경
    ```sql
    ALTER TABLE table_name CHANGE COLUMN old_name new_name datatype;
    ```
    예: `ALTER TABLE members CHANGE COLUMN address juso VARCHAR(100);`
  - 컬럼 타입 수정
    ```sql
    ALTER TABLE table_name MODIFY COLUMN column_name new_datatype;
    ```
    예: `ALTER TABLE members MODIFY COLUMN juso VARCHAR(50);`
  - 컬럼 삭제
    ```sql
    ALTER TABLE table_name DROP COLUMN column_name;
    ```
    예: `ALTER TABLE members DROP COLUMN age;`

---

### 3. 데이터 조작 (CRUD)
- **C (Create) - 데이터 입력**:
  ```sql
  INSERT INTO table_name (column1, column2) VALUES (value1, value2);
  ```
  - 단일 입력:
    ```sql
    INSERT INTO members (name, email) VALUES ('현하얀', 'me@a.com');
    ```
  - 다중 입력:
    ```sql
    INSERT INTO members (email, name) VALUES
        ('nan@a.com', '나나나'),
        ('da@a.com', '다다다');
    ```

- **R (Read) - 데이터 조회**:
  ```sql
  SELECT columns FROM table_name [WHERE condition];
  ```
  - 모든 데이터 조회:
    ```sql
    SELECT * FROM members;
    ```
  - 조건 조회:
    ```sql
    SELECT * FROM members WHERE id = 1;
    SELECT name, email FROM members WHERE name = '현하얀';
    ```

- **U (Update) - 데이터 수정**:
  ```sql
  UPDATE table_name SET column = value WHERE condition;
  ```
  예:
  ```sql
  UPDATE members SET name = '홍길동', email = 'hong@a.com' WHERE id = 4;
  ```
  **주의**: 조건 없으면 모든 데이터 수정됨!

- **D (Delete) - 데이터 삭제**:
  ```sql
  DELETE FROM table_name WHERE condition;
  ```
  예:
  ```sql
  DELETE FROM members WHERE id = 3;
  ```
  - 테이블 모든 데이터 삭제:
    ```sql
    DELETE FROM table_name;
    ```
  **주의**: 테이블 구조는 유지됨.

---

### 4. 실습 예제 (practice DB)
- **테이블 생성**:
  ```sql
  CREATE TABLE userinfo (
      id INT AUTO_INCREMENT PRIMARY KEY,
      nickname VARCHAR(20) NOT NULL,
      phone VARCHAR(11) UNIQUE,
      reg_date DATE DEFAULT(CURRENT_DATE)
  );
  ```

- **데이터 입력**:
  ```sql
  INSERT INTO userinfo (nickname, phone) VALUES
      ('alice', '0104567890'),
      ('bob', '0104561234'),
      ('charlie', '01112345678'),
      ('david', '01874562131'),
      ('eric', '01054687913');
  ```

- **조회**:
  - 전체: `SELECT * FROM userinfo;`
  - 특정 조건: `SELECT * FROM userinfo WHERE nickname = 'bob';`

- **수정**:
  ```sql
  UPDATE userinfo SET phone = '01099998888' WHERE id = 2;
  ```

- **삭제**:
  ```sql
  DELETE FROM userinfo WHERE id = 2;
  ```

- **스키마 변경**:
  - 컬럼 추가: `ALTER TABLE userinfo ADD COLUMN email VARCHAR(40) DEFAULT 'ex@gmail.com';`
  - 컬럼 수정: `ALTER TABLE userinfo MODIFY COLUMN nickname VARCHAR(100);`
  - 컬럼 삭제: `ALTER TABLE userinfo DROP COLUMN reg_date;`
  - 데이터 수정: `UPDATE userinfo SET email = 'good@good.com zgromadzenie WHERE id = 1;`

---

### 5. 주요 데이터 타입 및 제약 조건
- **데이터 타입**:
  - `INT`: 정수
  - `VARCHAR(n)`: 가변 길이 문자열 (최대 n자)
  - `DATE`: 날짜 (YYYY-MM-DD)
- **제약 조건**:
  - `PRIMARY KEY`: 고유 식별자
  - `AUTO_INCREMENT`: 자동 증가
  - `NOT NULL`: 필수 입력
  - `UNIQUE`: 중복 불가
  - `DEFAULT`: 기본값 설정

---

### 6. 팁
- **명령어 순서**: 데이터베이스 생성 → 테이블 생성 → 데이터 입력 → 조회/수정/삭제
- **조건 지정 필수**: `UPDATE`, `DELETE` 시 `WHERE` 절로 범위 지정
- **모니터링**: `SELECT`, `DESC`, `SHOW TABLES`로 진행 상황 확인
- **주의**: `DROP`, `DELETE`는 복구 불가, 신중히 사용
---
