-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optBackupAllWM', 'nwmCurrentVersion', 'nwmCurrentType', 'optAutoWM', 'optUploadWM', 'optActiveTxtWM', 'optActiveImgWM', 'optQuality', 'optTypeGIF', 'optTypeJPEG', 'optTypePNG', 'optTypeWEBP', 'optDisableCopy', 'optTextWM', 'optFontWM', 'optSizeWM', 'optAlphaWM', 'optColorWM', 'optLB_Mosaic', 'optCustom_X', 'optCustom_Y', 'optMosaicCross', 'optPosTxtWM', 'optAlignWM_X', 'optAlignWM_Y', 'optDegreeWM', 'optImageWM', 'optOpacWM', 'optGreyscaleWM', 'optNegateWM', 'optPosImgWM', 'optAlignImgWM_X', 'optAlignImgWM_Y', 'optFitWM_Width', 'optFitWM_Height', 'optKeepRatio', 'optMargin_X', 'optMargin_Y', 'optDegreeImgWM', 'optBackupImgWM');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

