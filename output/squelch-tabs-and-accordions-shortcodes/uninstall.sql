-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('squelch_taas_jquery_ui_theme', 'squelch_taas_vanity_url', 'squelch_taas_disable_magic_url', 'squelch_taas_custom_css_url', 'squelch_taas_v');

