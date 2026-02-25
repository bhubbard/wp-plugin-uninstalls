-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fanimaniUuid', 'fanimaniFaniSEOActive', 'fanimaniFaniSEOTitle', 'fanimaniFaniSEOColor', 'fanimaniFaniSEOBackground', 'fanimaniWidgetActive', 'fanimaniFaniSEOLinks', 'fanimaniFaniSEOUpdate');

