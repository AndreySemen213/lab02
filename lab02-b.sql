ALTER TABLE installs ADD CONSTRAINT fk_inst_soft_id FOREIGN KEY (soft_id) REFERENCES soft (id);

ALTER TABLE installs ADD CONSTRAINT fk_inst_pc_id FOREIGN KEY (pc_id) REFERENCES pcs (id);

ALTER TABLE pcs ADD CONSTRAINT fk_pcs_room_id FOREIGN KEY (room_id) REFERENCES rooms (id);

ALTER TABLE rooms ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY (emp_id) REFERENCES employees (id);
