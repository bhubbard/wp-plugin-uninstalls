<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yr-images-optimize-upload-removeFileAfterSend');
delete_site_option('yr-images-optimize-upload-removeFileAfterSend');
delete_option('yr-images-optimize-upload-targetSize');
delete_site_option('yr-images-optimize-upload-targetSize');
delete_option('yr-images-optimize-upload-quality');
delete_site_option('yr-images-optimize-upload-quality');
delete_option('yr-images-optimize-upload-minQuality');
delete_site_option('yr-images-optimize-upload-minQuality');
delete_option('yr-images-optimize-upload-qualityStepSize');
delete_site_option('yr-images-optimize-upload-qualityStepSize');
delete_option('yr-images-optimize-upload-maxWidth');
delete_site_option('yr-images-optimize-upload-maxWidth');
delete_option('yr-images-optimize-upload-maxHeight');
delete_site_option('yr-images-optimize-upload-maxHeight');
delete_option('yr-images-optimize-upload-resize');
delete_site_option('yr-images-optimize-upload-resize');
delete_option('yr-images-optimize-upload-throwIfSizeNotReached');
delete_site_option('yr-images-optimize-upload-throwIfSizeNotReached');
delete_option('yr-images-optimize-upload-template');
delete_site_option('yr-images-optimize-upload-template');
delete_option('yr-images-optimize-upload-template-dnd');
delete_site_option('yr-images-optimize-upload-template-dnd');
delete_option('yr-images-optimize-upload-maxFiles');
delete_site_option('yr-images-optimize-upload-maxFiles');
delete_option('yr-images-optimize-upload-file-formats');
delete_site_option('yr-images-optimize-upload-file-formats');

