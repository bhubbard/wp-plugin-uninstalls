<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EMBED_PDF_BY_SMALLPDF_VERSION');
delete_site_option('EMBED_PDF_BY_SMALLPDF_VERSION');

