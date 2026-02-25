-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pvlt-modal-title', 'pvlt-modal-text', 'pvlt-modal-accept-button', 'pvlt-modal-cancel-button', 'pvlt_media_selector_attachment_id', 'pvlt-powered', 'pvlt-display-option', 'pvlt-time-interval', 'pvlt-cookie-interval', 'pvlt-show-options', 'pvlt-obscured', 'pvlt-disable-jquery', 'pvlt-paused', 'pvlt-uid', 'pvlt-sender-id', 'pvlt-publicKey');

