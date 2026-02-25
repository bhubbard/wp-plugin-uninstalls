#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pjm_graph_options'
wp option delete 'pjm_graph_title'
wp option delete 'pjm_graph_width'
wp option delete 'pjm_graph_height'
wp option delete 'pjm_graph_bgcolor'
wp option delete 'pjm_graph_fgcolor'
wp option delete 'pjm_graph_linecolor'
wp option delete 'pjm_graph_bglinecolor'
wp option delete 'pjm_graph_trendcolor'
wp option delete 'pjm_graph_datefmt'

