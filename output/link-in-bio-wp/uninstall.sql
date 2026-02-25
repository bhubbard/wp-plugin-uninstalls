-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkinbio_landing_page_custom_slug', 'linkinbio_flush_rewrites', 'linkinbio_landing_page_disable_css', 'linkinbio_page_image', 'linkinbio_landing_page_image_link', 'linkinbio_landing_page_caption');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_linkinbio_redirect_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_linkinbio_redirect_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_linkinbio_redirect_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_linkinbio_redirect_link');

