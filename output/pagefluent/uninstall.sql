-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjpf_activate', 'wpjpf_transition_color', 'wpjpf_transition_activate', 'wpjpf_transition', 'wpjpf_loader_activate', 'wpjpf_loader', 'wpjpf_loader_color');

