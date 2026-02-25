-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('resmio_id', 'resmio_extended', 'resmio_btn_text', 'resmio_btn_bg', 'resmio_btn_bg_light', 'resmio_btn_bg_dark', 'resmio_wdgt_text', 'resmio_wdgt_bg', 'resmio_wdgt_width', 'resmio_wdgt_height');

