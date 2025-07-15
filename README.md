# 🕒 SimpleTimeService

A minimalist microservice built with Flask that returns the current timestamp and the IP address of the visitor.

---

## 🚀 How It Works

When you hit the `/` route, it responds with a JSON object like this:

```json
{
  "timestamp": "2025-07-11T10:05:00Z",
  "ip": "172.17.0.1"
}
