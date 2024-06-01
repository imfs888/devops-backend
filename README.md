# DevOps Monitoring

---

- [DevOps Monitoring](#devops-monitoring)
  - [1. Environment variable setup](#1-environment-variable-setup)
  - [2. Backend setup](#2-backend-setup)
    - [1. Installing backend dependencies](#1-installing-backend-dependencies)
    - [2. Running database migration](#2-running-database-migration)
    - [3. Running backend](#3-running-backend)


---

You need to have `node` and `npm` installed on your system. Node version should be 20 or more.

## 1. Environment variable setup

In the backend folder, there is an `.env.example`. Rename this to just `.env` and update `DATABASE_URL`.

> ***Note:** `DATABASE_URL` should be in this format `DATABASE_URL="postgresql://USERNAME:PASSWORD@HOSTNAME:PORT"`*.


## 2. Backend setup

### 1. Installing backend dependencies

Navigate to backend folder and run the following:

```bash
npm install
```

### 2. Running database migration

When running for the first time, you need to run database migrations so to do so navigate to backend folder and run the following:

```bash
npx prisma migrate deploy
```

### 3. Running backend

Once the dependencies are installed then run the following:

```bash
npm run start
```

This will start the backend server at port `5000`.

