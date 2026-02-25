#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apa_cf7sdomt_pages_with_contact_forms'
wp option delete 'apa_cf7sdomt_ga_page_view'
wp option delete 'apa_cf7sdomt_ga_event'
wp option delete 'apa_cf7sdomt_fb_pixel_lead'
wp option delete 'apa_cf7sdomt_ga_page_view_url'
wp option delete 'apa_cf7sdomt_ga_event_category'
wp option delete 'apa_cf7sdomt_ga_event_action'
wp option delete 'apa_cf7sdomt_hide_form'
wp option delete 'apa_cf7sdomt_deregister_styles'
wp option delete 'apa_cf7sdomt_deregister_javascript'

