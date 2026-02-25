-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dprx_minislides_templates', 'dprx_minislides_current_template');

