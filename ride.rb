class Ride
  def initialize(rowStart,columnStart,rowFinish,columnFinish,earliestStart,latestFinish)
    @rowStart=rowStart
    @columnStart=columnStart
    @rowFinish=rowFinish
    @columnFinish=columnFinish
    @distance=rowStart-rowFinish
    @start=earliestStart
    @finish=latestFinish
  end
end