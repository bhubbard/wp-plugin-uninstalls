-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hameslack_pending_review_channel', 'hameslack_slash_signing_secret', 'hameslack_slash_messages', 'hameslack_active_addons', 'hameslack_invitation_channel', 'hameslack_payload_url', 'hameslack_invite_api_token', 'hameslack_outgoing', 'hameslack_bot_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', 'hameslack_last_requested', '_hameslack_hash', '_hameslack_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', 'hameslack_last_requested', '_hameslack_hash', '_hameslack_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', 'hameslack_last_requested', '_hameslack_hash', '_hameslack_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', 'hameslack_last_requested', '_hameslack_hash', '_hameslack_token');

