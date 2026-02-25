-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ae_visitor_day', 'ae_visitor_yesterday', 'ae_visitor_week', 'ae_visitor_month', 'ae_visitor_all', 'ae_visitor_data', 'ae_visitor_day_update', 'ae_visitor_week_update', 'ae_visitor_month_update');

