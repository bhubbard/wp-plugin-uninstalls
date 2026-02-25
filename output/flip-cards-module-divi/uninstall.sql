-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwp_flip_cards_activation_time', 'lwp_flip_cards_spare_me');

