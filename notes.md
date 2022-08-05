## Here is a list of OCR software:

1. [Ocrad](https://www.gnu.org/software/ocrad/)
> > This also gets a [JS version](https://github.com/antimatter15/ocrad.js), but same as `Ocrad`, the result is not promising.

2. [GOCR](http://jocr.sourceforge.net/)
> > It got better result than `Ocrad` and 'so-called' more format support.
> > You can use `imagemagick` to convert images to supported format

3. [tesseract](https://code.google.com/p/tesseract-ocr/)
> > This is the most accurate and useful OCR software I found.
> > For language support, download the language packs from [here](https://code.google.com/p/tesseract-ocr/downloads/list) and place the extract data to `share/testdata` folder.
> > e.g. download the [chinese simplified pack](https://tesseract-ocr.googlecode.com/files/tesseract-ocr-3.02.chi_sim.tar.gz) and place it extracted data to `/usr/local/Cellar/tesseract/3.02.02_3/share/tessdata` folder, then run `tesseract` with `-l chi_sim` option(`tesseract image.pdm out -l chi_sim`).
> >
> > I tried google homepage logo and it seems `tesseract` works better with `.pnm` format.


## Improve qualities

* Convert image to bitonal image
```sh
convert input.jpg -threshold 50% output.jpg
# add `-negate` option to invert the image
convert input.jpg -negate output.jpg
```
* [image preprocessing to improve OCR](http://stackoverflow.com/questions/12006866/image-preprocessing-steps-to-improve-the-recognition-rate/)
* [image decompose](http://www.imagemagick.org/discourse-server/viewtopic.php?f=1&t=11279)


# Read More

* [android OCR by stackoverflow](http://stackoverflow.com/questions/19533273/best-ocr-optical-character-recognition-example-in-android)
* [review of some open source OCR software](http://www.mathstat.dal.ca/~selinger/ocr-test/)
