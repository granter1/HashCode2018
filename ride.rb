class Ride
  def initialize(rowStart,columnStart,rowFinish,columnFinish,earliestStart,latestFinish)
    @rowStart=rowStart
    @columnStart=columnStart
    @rowFinish=rowFinish
    @columnFinish=columnFinish
    @distance=(rowStart-rowFinish).abs + (columnStart-columnFinish).abs
    @start=earliestStart
    @finish=latestFinish
  end
end