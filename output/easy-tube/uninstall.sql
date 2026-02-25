-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Chanel API', 'Chanel PID', 'MaxResult', 'Style', 'sVTv', 'Easy Tube Font Style', 'Subscriber Button', 'Subscriber Text', 'ShowMOre', 'SelectStyle', 'Chanel ID');

