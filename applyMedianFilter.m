function imgCopy=applyMedianFilter(img, size)
    imgCopy = applyNonlinearFilter(img, @pseudomedian, size);