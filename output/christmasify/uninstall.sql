-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf_christmasify_snowflakes', 'cf_christmasify_classy_snow', 'cf_christmasify_snow_speed', 'cf_christmasify_santa', 'cf_christmasify_music', 'cf_christmasify_image_frame', 'cf_christmasify_font', 'cf_christmasify_homepage_only', 'cf_christmasify_date_from', 'cf_christmasify_date_to');

