-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkssc_enable_links_manager', 'linkssc_default_css', 'linkssc_facebook', 'linkssc_fbcolors', 'linkssc_template', 'linkssc_template_b', 'linkssc_template_a', 'linkssc_orderby', 'linkssc_order', 'linkssc_howmany');

