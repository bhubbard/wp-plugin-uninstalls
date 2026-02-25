#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdp_speaker_lite_assignments_settings'
wp option delete 'mdp_speaker_lite_developer_settings'
wp option delete 'mdp_speaker_lite_css_settings'
wp option delete 'mdp_speaker_lite_go_pro_settings'
wp option delete 'mdp_speaker_lite_settings'
wp option delete 'mdp_speaker_lite_design_settings'
wp option delete 'mdp_speaker_lite_status_settings'
wp option delete 'mdp_speaker_lite_post_types_settings'
wp option delete 'mdp_speaker_lite_uninstall_settings'

# Delete Transients
wp transient delete 'speaker_list_voices'

