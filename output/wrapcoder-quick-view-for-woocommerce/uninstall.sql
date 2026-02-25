-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qv-checkbox', 'qv-btn-text', 'qv-btn-txt', 'qv-btn-txt-hover', 'qv-btn-bg', 'qv-btn-bg-hover', 'qv-btn-pos', 'qv-btn-txt-padding', 'qv-btn-txt-size', 'qv-btn-br');

