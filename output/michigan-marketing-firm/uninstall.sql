-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mimf_slogan_show', 'mimf_msg_settings', 'mimf_settings', 'mimf_hide_page', 'mimf_hide_toolbar', 'mimf_particlejs', 'mimf_conditional_script');

