class Ride

  attr_reader :distance, :time, :start, :rowStart,:columnStart, :rowFinish, :columnFinish, :finish
  attr_accessor :is_assigned

  def initialize(rowStart,columnStart,rowFinish,columnFinish,earliestStart,latestFinish, id)
    @rowStart=rowStart
    @columnStart=columnStart
    @rowFinish=rowFinish
    @columnFinish=columnFinish
    @distance=(rowStart-rowFinish).abs + (columnStart-columnFinish).abs
    @start=earliestStart
    @finish=latestFinish
    @time = latestFinish - earliestStart
    @id = id
    @is_assigned = false
  end

  def to_s
    "#{@id}"
  end

end