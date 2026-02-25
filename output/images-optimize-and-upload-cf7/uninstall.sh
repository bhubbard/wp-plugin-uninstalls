#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yr-images-optimize-upload-removeFileAfterSend'
wp option delete 'yr-images-optimize-upload-targetSize'
wp option delete 'yr-images-optimize-upload-quality'
wp option delete 'yr-images-optimize-upload-minQuality'
wp option delete 'yr-images-optimize-upload-qualityStepSize'
wp option delete 'yr-images-optimize-upload-maxWidth'
wp option delete 'yr-images-optimize-upload-maxHeight'
wp option delete 'yr-images-optimize-upload-resize'
wp option delete 'yr-images-optimize-upload-throwIfSizeNotReached'
wp option delete 'yr-images-optimize-upload-template'
wp option delete 'yr-images-optimize-upload-template-dnd'
wp option delete 'yr-images-optimize-upload-maxFiles'
wp option delete 'yr-images-optimize-upload-file-formats'

