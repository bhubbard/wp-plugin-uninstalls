-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spx1mm_reca_site_key', 'spx1mm_enabled', 'spx1mm_reca_secret_key', 'spx1mm_reca_score', 'spx1mm_enabled_password', 'spx1mm_password', 'spx1mm_title', 'spx1mm_content', 'spx1mm_styles', 'spx1mm_head', 'spx1mm_after_body', 'spx1mm_before_html');

