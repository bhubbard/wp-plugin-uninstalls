-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shc_opt', 'shc_theme', 'shc_autolinks', 'shc_collapse', 'shc_gutter', 'shc_smarttabs', 'shc_tabsize', 'shc_toolbar');

