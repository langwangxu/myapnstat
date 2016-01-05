package org.anran.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * VolumeStatsByMonth entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "VOLUME_STATS_BY_MONTH")
public class VolumeStatsByMonth implements java.io.Serializable {

	// Fields

	private String recordId;
	private String groupId;
	private String statsmonth;
	private Long usedVolume;
	private String groupName;

	// Constructors

	/** default constructor */
	public VolumeStatsByMonth() {
	}

	/** minimal constructor */
	public VolumeStatsByMonth(String recordId) {
		this.recordId = recordId;
	}

	/** full constructor */
	public VolumeStatsByMonth(String recordId, String groupId,
			String statsMonth, Long usedVolume, String groupName) {
		this.recordId = recordId;
		this.groupId = groupId;
		this.statsmonth = statsMonth;
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

	@Column(name = "STATS_MONTH", length = 16)
	public String getStatsmonth() {
		return this.statsmonth;
	}

	public void setStatsmonth(String statsMonth) {
		this.statsmonth = statsMonth;
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