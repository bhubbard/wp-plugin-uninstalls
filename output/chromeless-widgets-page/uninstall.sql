-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chromeless_widgets_page_slug', 'chromeless_widgets_page_css');

