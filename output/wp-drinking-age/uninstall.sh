#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dagw_bootstrap'
wp option delete 'dagw_logo_url'
wp option delete 'dagw_message'
wp option delete 'dagw_redirect'
wp option delete 'dagw_deny_message'
wp option delete 'dagw_deny_timeout'
wp option delete 'dagw_gate_font_color'
wp option delete 'dagw_gate_background_color'
wp option delete 'dagw_gate_border_radius'
wp option delete 'dagw_gate_border_style'
wp option delete 'dagw_gate_border_color'
wp option delete 'dagw_gate_border_width'
wp option delete 'dagw_link_to_terms'
wp option delete 'dagw_link_to_privacy'

