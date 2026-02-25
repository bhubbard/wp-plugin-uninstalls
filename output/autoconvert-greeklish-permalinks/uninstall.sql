-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agp_automatic', 'agp_diphthongs', 'agp_automatic_post', 'agp_automatic_tax', 'agp_conversion', 'agp_version', 'auto_gr_permalinks_automatic', 'auto_gr_permalinks_diphthongs', 'auto_gr_permalinks_dipthongs', 'agp_notice_dismiss');

