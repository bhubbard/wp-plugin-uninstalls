-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('universal_honey_pot_use_user_behaviour', 'universal_honey_pot_counter');

