-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uniemd_converter', 'uniembed_font', 'uniemd_forceCSS', 'uniemd_embed', 'uniemd_init', 'uniemd_jquery');

