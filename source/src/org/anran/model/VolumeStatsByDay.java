package org.anran.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * VolumeStatsByDay entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "VOLUME_STATS_BY_DAY")
public class VolumeStatsByDay implements java.io.Serializable {

	// Fields

	private String recordId;
	private String groupId;
	private String statsday;
	private Long usedVolume;
	private String groupName;

	// Constructors

	/** default constructor */
	public VolumeStatsByDay() {
	}

	/** minimal constructor */
	public VolumeStatsByDay(String recordId) {
		this.recordId = recordId;
	}

	/** full constructor */
	public VolumeStatsByDay(String recordId, String groupId, String statsday,
			Long usedVolume, String groupName) {
		this.recordId = recordId;
		this.groupId = groupId;
		this.statsday = statsday;
		this.usedVolume = usedVolume;
		this.groupName = groupName;
	}

	// Property accessors
	@Id
	@Column(name = "RECORD_ID", unique = true, nullable = false, length = 36)
	public String getRecordId() {
		return this.recordId;
	}

	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}

	@Column(name = "GROUP_ID", length = 36)
	public String getGroupId() {
		return this.groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	@Column(name = "STATS_DAY", length = 16)
	public String getStatsday() {
		return this.statsday;
	}

	public void setStatsday(String statsday) {
		this.statsday = statsday;
	}

	@Column(name = "USED_VOLUME", precision = 16, scale = 0)
	public Long getUsedVolume() {
		return this.usedVolume;
	}

	public void setUsedVolume(Long usedVolume) {
		this.usedVolume = usedVolume;
	}

	@Column(name = "GROUP_NAME", length = 36)
	public String getGroupName() {
		return this.groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

}