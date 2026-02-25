-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yr-images-optimize-upload-removeFileAfterSend', 'yr-images-optimize-upload-targetSize', 'yr-images-optimize-upload-quality', 'yr-images-optimize-upload-minQuality', 'yr-images-optimize-upload-qualityStepSize', 'yr-images-optimize-upload-maxWidth', 'yr-images-optimize-upload-maxHeight', 'yr-images-optimize-upload-resize', 'yr-images-optimize-upload-throwIfSizeNotReached', 'yr-images-optimize-upload-template', 'yr-images-optimize-upload-template-dnd', 'yr-images-optimize-upload-maxFiles', 'yr-images-optimize-upload-file-formats');

