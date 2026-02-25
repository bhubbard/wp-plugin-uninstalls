-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gpagespeedi_options', 'gpagespeedi_ui_options', 'gpagespeedi_upgrade_recheck_required', 'gpi_abort_scan', 'gpi_recheck_urls', 'gpi_progress', 'gpi_check_now', 'gpi_missed_url_groups', 'gpi_error_message');

