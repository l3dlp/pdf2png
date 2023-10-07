# pdf2png

### fast PDF to PNG bash converter

Quick and No Bullshit

### What's This?

Got a heap of PDF files and need PNG previews? This script's got you covered. It goes through your directory, finds PDFs, and makes a PNG of the first page of each one. If the PNG already exists, it does jack squat because it's not stupid.

### Prerequisites

- ImageMagick (If you don't have it, <code>sudo apt-get install imagemagick</code> should sort you out).
- Install the `pdf2png` bash script in your local `bin` with good rights (`chmod 700 pdf2png` could be a good safekeeper).

### Usage

<strong>To convert all PDFs in the current directory:</strong>
```bash
./pdf2png
```

<strong>To convert all PDFs in a specific directory:</strong>
```bash
pdf2png /path/to/the/directory
```

<strong>To convert all PDFs in a specific directory and all its subdirectories:</strong>
```bash
pdf2png /path/to/the/directory -r
```

<strong>To convert all PDFs in the current directory and all its subdirectories:</strong>
```bash
pdf2png . -r
```

### Wanna Contribute?

Found a bug? Or maybe a way to make this thing even faster?
Pull requests or open an issue. I don't bite.

### License

Use it how you like. This is public domain. 

If it crashes your computer, not my business ^^
