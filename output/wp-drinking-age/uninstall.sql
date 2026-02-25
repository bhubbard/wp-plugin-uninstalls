-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dagw_bootstrap', 'dagw_logo_url', 'dagw_message', 'dagw_redirect', 'dagw_deny_message', 'dagw_deny_timeout', 'dagw_gate_font_color', 'dagw_gate_background_color', 'dagw_gate_border_radius', 'dagw_gate_border_style', 'dagw_gate_border_color', 'dagw_gate_border_width', 'dagw_link_to_terms', 'dagw_link_to_privacy');

