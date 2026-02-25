#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'einsatzverwaltung_admin_notices'
wp option delete 'einsatz_disable_blockeditor'
wp option delete 'einsatzverwaltung_incidentnumbers_auto'
wp option delete 'einsatzvw_db_version'
wp option delete 'einsatzvw_category'
wp option delete 'einsatzvw_list_annotations_color_off'
wp option delete 'einsatzvw_list_columns'
wp option delete 'einsatzvw_list_ext_link'
wp option delete 'einsatzvw_list_fahrzeuge_link'
wp option delete 'einsatzvw_list_art_hierarchy'
wp option delete 'einsatzvw_list_zebracolor'
wp option delete 'einsatzvw_list_zebra_nth'
wp option delete 'einsatzvw_list_zebra'
wp option delete 'einsatzvw_disable_fontawesome'
wp option delete 'einsatzverwaltung_reporttemplate'
wp option delete 'einsatzverwaltung_report_contentifempty'
wp option delete 'einsatzverwaltung_use_reporttemplate'
wp option delete 'einsatzverwaltung_use_excerpttemplate'
wp option delete 'einsatzverwaltung_excerpttemplate'
wp option delete 'einsatzvw_flush_rewrite_rules'
wp option delete 'einsatz_permalink'
wp option delete 'einsatzvw_numbers_separator'
wp option delete 'einsatzvw_einsatznummer_stellen'
wp option delete 'einsatzvw_einsatznummer_lfdvorne'
wp option delete 'einsatzverwaltung_reformat_numbers'
wp option delete 'einsatzvw_rewrite_slug'
wp option delete 'einsatz_support_excerpt'
wp option delete 'einsatz_support_posttag'
wp option delete 'einsatz_support_comments'
wp option delete 'einsatzvw_show_einsatzberichte_mainloop'
wp option delete 'einsatzvw_loop_only_special'
wp option delete 'einsatzvw_einsatz_hideemptydetails'
wp option delete 'einsatzvw_show_exteinsatzmittel_archive'
wp option delete 'einsatzvw_show_einsatzart_archive'
wp option delete 'einsatzvw_show_fahrzeug_archive'
wp option delete 'einsatzvw_open_ext_in_new'
wp option delete 'einsatzvw_cap_roles_administrator'
wp option delete 'einsatzvw_show_links_in_excerpt'
wp option delete 'einsatzvw_category_only_special'
wp option delete 'einsatzvw_excerpt_type'
wp option delete 'einsatzvw_excerpt_type_feed'
wp option delete 'einsatzvw_version'

# Clear Cron Jobs
wp cron event delete 'einsatzverwaltung_migrate_units'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'out_of_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'out_of_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'out_of_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'out_of_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einsatz_incidentNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einsatz_incidentNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einsatz_incidentNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einsatz_incidentNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_einsatz_timeofalerting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_einsatz_timeofalerting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_einsatz_timeofalerting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_einsatz_timeofalerting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einsatz_seqNum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einsatz_seqNum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einsatz_seqNum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einsatz_seqNum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vehicle_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vehicle_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vehicle_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vehicle_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_featured_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'old_unit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'old_unit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'old_unit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'old_unit_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_evw_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_evw_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_evw_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_evw_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unit_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unit_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unit_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unit_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vehicleorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vehicleorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vehicleorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vehicleorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vehicle_exturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vehicle_exturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vehicle_exturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vehicle_exturl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'einsatz_special'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'einsatz_special'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'einsatz_special'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'einsatz_special'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fahrzeugpid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fahrzeugpid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fahrzeugpid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fahrzeugpid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unit_exturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unit_exturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unit_exturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unit_exturl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unit_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unit_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unit_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unit_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'typecolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'typecolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'typecolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'typecolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
