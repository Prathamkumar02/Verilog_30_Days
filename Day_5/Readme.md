# 🧩 Procedural Non-Blocking — Concepts, Formats & Evaluation

## 🚀 Overview

**Procedural Non-Blocking** refers to a programming approach where procedural (step-by-step) code executes without **blocking** the main thread while waiting for slow operations such as **I/O, network requests, or disk reads**.

Instead of pausing execution, non-blocking procedures allow other tasks to continue, improving responsiveness and throughput — especially in **concurrent, asynchronous, or event-driven** systems.

---

## ⚙️ Typical Formats

### 1. **Callbacks (Event-driven)**

```js
const fs = require('fs');

function readFileNonBlocking() {
  fs.readFile('data.txt', 'utf8', (err, data) => {
    if (err) throw err;
    console.log('File data:', data);
  });
  console.log('Read request issued.'); // Executes immediately (non-blocking)
}
