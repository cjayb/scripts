proj_dir=/Volumes/projects/MINDLAB2013_03-MEG-BlindPerception/raw
out_dir=/Volumes/BLINDSTUDY/MRI_data

for fold in `find ${proj_dir} -type d -name MR`; do
    out_path=${fold##${proj_dir}/}
    echo mkdir -p ${out_dir}/${out_path}
    mkdir -p ${out_dir}/${out_path}
    echo cp -R ${fold}/ ${out_dir}/${out_path}
    cp -R ${fold}/ ${out_dir}/${out_path}
done
