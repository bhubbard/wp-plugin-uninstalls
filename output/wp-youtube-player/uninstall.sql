-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptube_width', 'wptube_height', 'wptube_method', 'wptube_player_version', 'wptube_showinfo', 'wptube_autoplay', 'wptube_theme', 'wptube_fs', 'wptube_rel', 'wptube_iv_load_policy', 'wptube_cc_load_policy', 'wptube_hd', 'wptube_showsearch', 'wptube_modestbranding');

